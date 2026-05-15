create extension if not exists pgcrypto;

drop table if exists public.generated_content cascade;
drop table if exists public.usage_counters cascade;

create schema if not exists private;

create or replace function private.set_current_timestamp()
returns trigger
language plpgsql
set search_path = pg_catalog
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

create table public.profiles (
  id uuid primary key references auth.users (id) on delete cascade,
  email text not null unique,
  name text,
  created_at timestamptz not null default timezone('utc', now()),
  updated_at timestamptz not null default timezone('utc', now())
);

create table public.brand_profiles (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null unique references public.profiles (id) on delete cascade,
  business_name text not null,
  account_type text not null check (
    account_type in (
      'creator',
      'localBusiness',
      'onlineBusiness',
      'freelancer',
      'other'
    )
  ),
  niche text not null check (
    niche in (
      'tattooArtist',
      'beauty',
      'fitness',
      'food',
      'fashion',
      'photography',
      'coaching',
      'handmadeProducts',
      'other'
    )
  ),
  audience text not null,
  offer_description text not null,
  goals text[] not null default '{}',
  tone text[] not null default '{}',
  language text not null check (
    language in ('english', 'spanish', 'ukrainian', 'russian', 'other')
  ),
  posting_frequency text not null check (
    posting_frequency in (
      'twoTimesPerWeek',
      'threeTimesPerWeek',
      'fiveTimesPerWeek',
      'daily'
    )
  ),
  location text,
  instagram_handle text,
  notes text,
  created_at timestamptz not null default timezone('utc', now()),
  updated_at timestamptz not null default timezone('utc', now()),
  check (
    goals <@ array[
      'getMoreFollowers',
      'getMoreClients',
      'sellProducts',
      'sellServices',
      'improveEngagement',
      'postMoreConsistently',
      'buildPersonalBrand',
      'educate'
    ]::text[]
  ),
  check (
    tone <@ array[
      'friendly',
      'professional',
      'funny',
      'luxury',
      'bold',
      'educational',
      'personal'
    ]::text[]
  )
);

create table public.content_ideas (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.profiles (id) on delete cascade,
  brand_profile_id uuid not null references public.brand_profiles (id) on delete cascade,
  title text not null,
  format text not null check (
    format in ('reel', 'carousel', 'story', 'staticPost', 'mixed')
  ),
  goal text not null check (
    goal in (
      'getMoreFollowers',
      'getMoreClients',
      'sellProducts',
      'sellServices',
      'improveEngagement',
      'postMoreConsistently',
      'buildPersonalBrand',
      'educate'
    )
  ),
  description text not null,
  why_it_works text not null,
  status text not null check (
    status in ('idea', 'draft', 'readyToPost', 'posted')
  ),
  created_at timestamptz not null default timezone('utc', now()),
  updated_at timestamptz not null default timezone('utc', now())
);

create table public.profile_audits (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.profiles (id) on delete cascade,
  brand_profile_id uuid not null references public.brand_profiles (id) on delete cascade,
  score integer not null check (score between 0 and 100),
  feedback jsonb not null default '{}'::jsonb,
  suggested_bio text not null,
  fixes text[] not null default '{}',
  input_bio text not null,
  input_highlights text[] not null default '{}',
  input_pinned_posts text[] not null default '{}',
  created_at timestamptz not null default timezone('utc', now())
);

create table public.generated_contents (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.profiles (id) on delete cascade,
  brand_profile_id uuid not null references public.brand_profiles (id) on delete cascade,
  idea_id uuid references public.content_ideas (id) on delete set null,
  type text not null check (
    type in (
      'contentIdeas',
      'caption',
      'reelScript',
      'weeklyPlan',
      'profileAudit'
    )
  ),
  prompt_input jsonb not null default '{}'::jsonb,
  result jsonb not null default '{}'::jsonb,
  language text not null check (
    language in ('english', 'spanish', 'ukrainian', 'russian', 'other')
  ),
  tone text[] not null default '{}',
  is_saved boolean not null default false,
  status text not null check (
    status in ('idea', 'draft', 'readyToPost', 'posted')
  ),
  created_at timestamptz not null default timezone('utc', now()),
  updated_at timestamptz not null default timezone('utc', now()),
  check (
    tone <@ array[
      'friendly',
      'professional',
      'funny',
      'luxury',
      'bold',
      'educational',
      'personal'
    ]::text[]
  )
);

create table public.weekly_plans (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.profiles (id) on delete cascade,
  brand_profile_id uuid not null references public.brand_profiles (id) on delete cascade,
  week_start_date date not null,
  goal text not null,
  created_at timestamptz not null default timezone('utc', now()),
  updated_at timestamptz not null default timezone('utc', now()),
  unique (user_id, week_start_date)
);

create table public.weekly_plan_items (
  id uuid primary key default gen_random_uuid(),
  weekly_plan_id uuid not null references public.weekly_plans (id) on delete cascade,
  scheduled_for timestamptz not null,
  content_type text not null check (
    content_type in ('reel', 'carousel', 'story', 'staticPost', 'mixed')
  ),
  topic text not null,
  goal text not null check (
    goal in (
      'getMoreFollowers',
      'getMoreClients',
      'sellProducts',
      'sellServices',
      'improveEngagement',
      'postMoreConsistently',
      'buildPersonalBrand',
      'educate'
    )
  ),
  cta text not null,
  status text not null check (
    status in ('idea', 'draft', 'readyToPost', 'posted')
  ),
  generated_content_id uuid references public.generated_contents (id) on delete set null,
  created_at timestamptz not null default timezone('utc', now()),
  updated_at timestamptz not null default timezone('utc', now())
);

create table public.usage_entitlements (
  user_id uuid primary key references public.profiles (id) on delete cascade,
  monthly_generation_limit integer not null default 30 check (monthly_generation_limit >= 0),
  monthly_generation_count integer not null default 0 check (monthly_generation_count >= 0),
  monthly_weekly_plan_limit integer not null default 8 check (monthly_weekly_plan_limit >= 0),
  monthly_weekly_plan_count integer not null default 0 check (monthly_weekly_plan_count >= 0),
  monthly_profile_audit_limit integer not null default 10 check (monthly_profile_audit_limit >= 0),
  monthly_profile_audit_count integer not null default 0 check (monthly_profile_audit_count >= 0),
  is_pro boolean not null default false,
  period_start timestamptz not null default timezone('utc', date_trunc('month', now())),
  period_end timestamptz not null default timezone('utc', date_trunc('month', now()) + interval '1 month'),
  created_at timestamptz not null default timezone('utc', now()),
  updated_at timestamptz not null default timezone('utc', now()),
  check (period_end > period_start)
);

create table public.usage_events (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.profiles (id) on delete cascade,
  event_type text not null check (
    event_type in ('contentGeneration', 'weeklyPlanGeneration', 'profileAudit')
  ),
  quantity integer not null default 1 check (quantity > 0),
  metadata jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default timezone('utc', now())
);

create index brand_profiles_user_id_idx
  on public.brand_profiles (user_id);

create index content_ideas_user_id_status_created_at_idx
  on public.content_ideas (user_id, status, created_at desc);

create index content_ideas_brand_profile_id_idx
  on public.content_ideas (brand_profile_id);

create index profile_audits_user_id_created_at_idx
  on public.profile_audits (user_id, created_at desc);

create index generated_contents_user_id_type_status_created_at_idx
  on public.generated_contents (user_id, type, status, created_at desc);

create index generated_contents_brand_profile_id_idx
  on public.generated_contents (brand_profile_id);

create index generated_contents_saved_idx
  on public.generated_contents (user_id, created_at desc)
  where is_saved = true;

create index weekly_plans_user_id_week_start_date_idx
  on public.weekly_plans (user_id, week_start_date desc);

create index weekly_plan_items_weekly_plan_id_scheduled_for_idx
  on public.weekly_plan_items (weekly_plan_id, scheduled_for);

create index usage_events_user_id_event_type_created_at_idx
  on public.usage_events (user_id, event_type, created_at desc);

create or replace function private.handle_new_auth_user()
returns trigger
language plpgsql
security definer
set search_path = public, auth
as $$
begin
  insert into public.profiles (id, email, name)
  values (
    new.id,
    coalesce(new.email, ''),
    coalesce(new.raw_user_meta_data ->> 'name', '')
  )
  on conflict (id) do update
    set email = excluded.email,
        name = excluded.name,
        updated_at = timezone('utc', now());

  insert into public.usage_entitlements (user_id)
  values (new.id)
  on conflict (user_id) do nothing;

  return new;
end;
$$;

create trigger set_profiles_updated_at
before update on public.profiles
for each row
execute function private.set_current_timestamp();

create trigger set_brand_profiles_updated_at
before update on public.brand_profiles
for each row
execute function private.set_current_timestamp();

create trigger set_content_ideas_updated_at
before update on public.content_ideas
for each row
execute function private.set_current_timestamp();

create trigger set_generated_contents_updated_at
before update on public.generated_contents
for each row
execute function private.set_current_timestamp();

create trigger set_weekly_plans_updated_at
before update on public.weekly_plans
for each row
execute function private.set_current_timestamp();

create trigger set_weekly_plan_items_updated_at
before update on public.weekly_plan_items
for each row
execute function private.set_current_timestamp();

create trigger set_usage_entitlements_updated_at
before update on public.usage_entitlements
for each row
execute function private.set_current_timestamp();

create trigger on_auth_user_created
after insert on auth.users
for each row
execute function private.handle_new_auth_user();

alter table public.profiles enable row level security;
alter table public.brand_profiles enable row level security;
alter table public.content_ideas enable row level security;
alter table public.profile_audits enable row level security;
alter table public.generated_contents enable row level security;
alter table public.weekly_plans enable row level security;
alter table public.weekly_plan_items enable row level security;
alter table public.usage_entitlements enable row level security;
alter table public.usage_events enable row level security;

create policy "profiles_select_own"
on public.profiles
for select
using ((select auth.uid()) = id);

create policy "profiles_update_own"
on public.profiles
for update
using ((select auth.uid()) = id)
with check ((select auth.uid()) = id);

create policy "brand_profiles_select_own"
on public.brand_profiles
for select
using ((select auth.uid()) = user_id);

create policy "brand_profiles_insert_own"
on public.brand_profiles
for insert
with check ((select auth.uid()) = user_id);

create policy "brand_profiles_update_own"
on public.brand_profiles
for update
using ((select auth.uid()) = user_id)
with check ((select auth.uid()) = user_id);

create policy "brand_profiles_delete_own"
on public.brand_profiles
for delete
using ((select auth.uid()) = user_id);

create policy "content_ideas_select_own"
on public.content_ideas
for select
using ((select auth.uid()) = user_id);

create policy "content_ideas_insert_own"
on public.content_ideas
for insert
with check ((select auth.uid()) = user_id);

create policy "content_ideas_update_own"
on public.content_ideas
for update
using ((select auth.uid()) = user_id)
with check ((select auth.uid()) = user_id);

create policy "content_ideas_delete_own"
on public.content_ideas
for delete
using ((select auth.uid()) = user_id);

create policy "profile_audits_select_own"
on public.profile_audits
for select
using ((select auth.uid()) = user_id);

create policy "profile_audits_insert_own"
on public.profile_audits
for insert
with check ((select auth.uid()) = user_id);

create policy "generated_contents_select_own"
on public.generated_contents
for select
using ((select auth.uid()) = user_id);

create policy "generated_contents_insert_own"
on public.generated_contents
for insert
with check ((select auth.uid()) = user_id);

create policy "generated_contents_update_own"
on public.generated_contents
for update
using ((select auth.uid()) = user_id)
with check ((select auth.uid()) = user_id);

create policy "generated_contents_delete_own"
on public.generated_contents
for delete
using ((select auth.uid()) = user_id);

create policy "weekly_plans_select_own"
on public.weekly_plans
for select
using ((select auth.uid()) = user_id);

create policy "weekly_plans_insert_own"
on public.weekly_plans
for insert
with check ((select auth.uid()) = user_id);

create policy "weekly_plans_update_own"
on public.weekly_plans
for update
using ((select auth.uid()) = user_id)
with check ((select auth.uid()) = user_id);

create policy "weekly_plans_delete_own"
on public.weekly_plans
for delete
using ((select auth.uid()) = user_id);

create policy "weekly_plan_items_select_own"
on public.weekly_plan_items
for select
using (
  exists (
    select 1
    from public.weekly_plans weekly_plan
    where weekly_plan.id = weekly_plan_items.weekly_plan_id
      and weekly_plan.user_id = (select auth.uid())
  )
);

create policy "weekly_plan_items_insert_own"
on public.weekly_plan_items
for insert
with check (
  exists (
    select 1
    from public.weekly_plans weekly_plan
    where weekly_plan.id = weekly_plan_items.weekly_plan_id
      and weekly_plan.user_id = (select auth.uid())
  )
);

create policy "weekly_plan_items_update_own"
on public.weekly_plan_items
for update
using (
  exists (
    select 1
    from public.weekly_plans weekly_plan
    where weekly_plan.id = weekly_plan_items.weekly_plan_id
      and weekly_plan.user_id = (select auth.uid())
  )
)
with check (
  exists (
    select 1
    from public.weekly_plans weekly_plan
    where weekly_plan.id = weekly_plan_items.weekly_plan_id
      and weekly_plan.user_id = (select auth.uid())
  )
);

create policy "weekly_plan_items_delete_own"
on public.weekly_plan_items
for delete
using (
  exists (
    select 1
    from public.weekly_plans weekly_plan
    where weekly_plan.id = weekly_plan_items.weekly_plan_id
      and weekly_plan.user_id = (select auth.uid())
  )
);

create policy "usage_entitlements_select_own"
on public.usage_entitlements
for select
using ((select auth.uid()) = user_id);

create policy "usage_events_select_own"
on public.usage_events
for select
using ((select auth.uid()) = user_id);

comment on schema private is
  'Private helper functions used by Supabase triggers and server-side automation.';
