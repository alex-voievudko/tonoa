delete from public.usage_events
where user_id in (
  '11111111-1111-1111-1111-111111111111',
  '22222222-2222-2222-2222-222222222222'
);

delete from public.weekly_plan_items
where weekly_plan_id in (
  '77777777-7777-7777-7777-777777777777',
  '88888888-8888-8888-8888-888888888888'
);

delete from public.weekly_plans
where id in (
  '77777777-7777-7777-7777-777777777777',
  '88888888-8888-8888-8888-888888888888'
);

delete from public.generated_contents
where id in (
  '66666666-6666-6666-6666-666666666661',
  '66666666-6666-6666-6666-666666666662'
);

delete from public.profile_audits
where id in (
  '55555555-5555-5555-5555-555555555551',
  '55555555-5555-5555-5555-555555555552'
);

delete from public.content_ideas
where id in (
  '44444444-4444-4444-4444-444444444441',
  '44444444-4444-4444-4444-444444444442'
);

delete from public.brand_profiles
where id in (
  '33333333-3333-3333-3333-333333333331',
  '33333333-3333-3333-3333-333333333332'
);

delete from public.usage_entitlements
where user_id in (
  '11111111-1111-1111-1111-111111111111',
  '22222222-2222-2222-2222-222222222222'
);

delete from public.profiles
where id in (
  '11111111-1111-1111-1111-111111111111',
  '22222222-2222-2222-2222-222222222222'
);

delete from auth.users
where id in (
  '11111111-1111-1111-1111-111111111111',
  '22222222-2222-2222-2222-222222222222'
);

insert into auth.users (
  instance_id,
  id,
  aud,
  role,
  email,
  encrypted_password,
  email_confirmed_at,
  raw_app_meta_data,
  raw_user_meta_data,
  created_at,
  updated_at,
  is_sso_user,
  is_anonymous
)
values
  (
    '00000000-0000-0000-0000-000000000000',
    '11111111-1111-1111-1111-111111111111',
    'authenticated',
    'authenticated',
    'demo@tonoa.app',
    crypt('Demo123456!', gen_salt('bf')),
    timezone('utc', now()),
    '{"provider":"email","providers":["email"]}'::jsonb,
    '{"name":"Demo Creator"}'::jsonb,
    timezone('utc', now()),
    timezone('utc', now()),
    false,
    false
  ),
  (
    '00000000-0000-0000-0000-000000000000',
    '22222222-2222-2222-2222-222222222222',
    'authenticated',
    'authenticated',
    'coach@tonoa.app',
    crypt('Coach123456!', gen_salt('bf')),
    timezone('utc', now()),
    '{"provider":"email","providers":["email"]}'::jsonb,
    '{"name":"Coach Studio"}'::jsonb,
    timezone('utc', now()),
    timezone('utc', now()),
    false,
    false
  );

update public.usage_entitlements
set monthly_generation_limit = 40,
    monthly_generation_count = 6,
    monthly_weekly_plan_limit = 10,
    monthly_weekly_plan_count = 1,
    monthly_profile_audit_limit = 12,
    monthly_profile_audit_count = 1,
    period_start = date_trunc('month', timezone('utc', now())),
    period_end = date_trunc('month', timezone('utc', now())) + interval '1 month'
where user_id = '11111111-1111-1111-1111-111111111111';

update public.usage_entitlements
set monthly_generation_limit = 20,
    monthly_generation_count = 2,
    monthly_weekly_plan_limit = 4,
    monthly_weekly_plan_count = 0,
    monthly_profile_audit_limit = 4,
    monthly_profile_audit_count = 0,
    period_start = date_trunc('month', timezone('utc', now())),
    period_end = date_trunc('month', timezone('utc', now())) + interval '1 month'
where user_id = '22222222-2222-2222-2222-222222222222';

insert into public.brand_profiles (
  id,
  user_id,
  business_name,
  account_type,
  niche,
  audience,
  offer_description,
  goals,
  tone,
  language,
  posting_frequency,
  location,
  instagram_handle,
  notes
)
values
  (
    '33333333-3333-3333-3333-333333333331',
    '11111111-1111-1111-1111-111111111111',
    'Luna Ink Studio',
    'localBusiness',
    'tattooArtist',
    'Women in Madrid looking for fine-line tattoos with a warm studio experience.',
    'Fine-line custom tattoos, flash days, and aftercare support.',
    array['getMoreClients', 'improveEngagement', 'postMoreConsistently'],
    array['friendly', 'bold', 'personal'],
    'english',
    'threeTimesPerWeek',
    'Madrid, Spain',
    '@lunainkstudio',
    'Lean into trust-building, healed results, and artist personality.'
  ),
  (
    '33333333-3333-3333-3333-333333333332',
    '22222222-2222-2222-2222-222222222222',
    'Coach Studio',
    'creator',
    'coaching',
    'Early-stage founders who need content that sounds sharp without feeling corporate.',
    'Messaging workshops, audits, and monthly strategy support.',
    array['buildPersonalBrand', 'getMoreClients', 'educate'],
    array['professional', 'educational'],
    'english',
    'twoTimesPerWeek',
    'Remote',
    '@coachstudio',
    'Keep examples practical and founder-facing.'
  );

insert into public.content_ideas (
  id,
  user_id,
  brand_profile_id,
  title,
  format,
  goal,
  description,
  why_it_works,
  status
)
values
  (
    '44444444-4444-4444-4444-444444444441',
    '11111111-1111-1111-1111-111111111111',
    '33333333-3333-3333-3333-333333333331',
    '3 tattoo myths first-timers still believe',
    'carousel',
    'educate',
    'A myth-busting carousel that walks new clients through pain, healing, and design prep.',
    'It lowers anxiety and turns education into saves and DMs.',
    'readyToPost'
  ),
  (
    '44444444-4444-4444-4444-444444444442',
    '22222222-2222-2222-2222-222222222222',
    '33333333-3333-3333-3333-333333333332',
    'The founder bio line that instantly sounds clearer',
    'reel',
    'buildPersonalBrand',
    'Short talking-head reel showing one simple before-and-after positioning rewrite.',
    'Concrete transformations outperform vague advice for founder audiences.',
    'draft'
  );

insert into public.profile_audits (
  id,
  user_id,
  brand_profile_id,
  score,
  feedback,
  suggested_bio,
  fixes,
  input_bio,
  input_highlights,
  input_pinned_posts
)
values
  (
    '55555555-5555-5555-5555-555555555551',
    '11111111-1111-1111-1111-111111111111',
    '33333333-3333-3333-3333-333333333331',
    84,
    '{
      "strengths": ["Strong visual niche", "Clear local audience"],
      "gaps": ["Offer is not explicit in bio", "Aftercare trust signal could be stronger"]
    }'::jsonb,
    'Fine-line tattoos in Madrid | custom pieces + flash days | calm studio, clear aftercare',
    array[
      'Add city + offer to the first bio line',
      'Turn a highlight into aftercare proof',
      'Pin one healed-results post'
    ],
    'Fine line tattoos and custom ideas. Bookings open.',
    array['Portfolio', 'Flash', 'Studio'],
    array['Fresh floral tattoo', 'Studio walkthrough']
  ),
  (
    '55555555-5555-5555-5555-555555555552',
    '22222222-2222-2222-2222-222222222222',
    '33333333-3333-3333-3333-333333333332',
    79,
    '{
      "strengths": ["Clear authority signal"],
      "gaps": ["Audience is implied, not stated", "Pinned content lacks transformation proof"]
    }'::jsonb,
    'Messaging coach for founders | sharper positioning, clearer offers, calmer content systems',
    array[
      'Name the founder audience directly',
      'Add one pinned before-and-after messaging example'
    ],
    'I help brands say things better.',
    array['Client Wins', 'Offers'],
    array['Weekly content thoughts']
  );

insert into public.generated_contents (
  id,
  user_id,
  brand_profile_id,
  idea_id,
  type,
  prompt_input,
  result,
  language,
  tone,
  is_saved,
  status
)
values
  (
    '66666666-6666-6666-6666-666666666661',
    '11111111-1111-1111-1111-111111111111',
    '33333333-3333-3333-3333-333333333331',
    '44444444-4444-4444-4444-444444444441',
    'caption',
    '{"topic":"3 tattoo myths first-timers still believe","goal":"educate"}'::jsonb,
    '{
      "type":"caption",
      "content":{
        "hook":"Most first tattoo nerves come from bad information.",
        "body":"Swipe through three myths I hear every week in the studio and what is actually true.",
        "cta":"DM me your idea if you want honest prep advice before booking."
      },
      "generatedAt":"2026-05-15T10:00:00Z",
      "warnings":[]
    }'::jsonb,
    'english',
    array['friendly', 'educational'],
    true,
    'readyToPost'
  ),
  (
    '66666666-6666-6666-6666-666666666662',
    '22222222-2222-2222-2222-222222222222',
    '33333333-3333-3333-3333-333333333332',
    '44444444-4444-4444-4444-444444444442',
    'reelScript',
    '{"topic":"The founder bio line that instantly sounds clearer","goal":"buildPersonalBrand"}'::jsonb,
    '{
      "type":"reelScript",
      "content":{
        "hook":"If your bio sounds smart but nobody knows who it is for, try this.",
        "beats":["Say the vague version", "Replace it with a founder-specific promise", "End with one concrete outcome"],
        "cta":"Save this before your next profile rewrite."
      },
      "generatedAt":"2026-05-15T11:00:00Z",
      "warnings":["Keep the final line under 80 characters."]
    }'::jsonb,
    'english',
    array['professional', 'educational'],
    false,
    'draft'
  );

insert into public.weekly_plans (
  id,
  user_id,
  brand_profile_id,
  week_start_date,
  goal
)
values
  (
    '77777777-7777-7777-7777-777777777777',
    '11111111-1111-1111-1111-111111111111',
    '33333333-3333-3333-3333-333333333331',
    date '2026-05-11',
    'Build trust with first-time tattoo clients and turn profile visits into DMs.'
  ),
  (
    '88888888-8888-8888-8888-888888888888',
    '22222222-2222-2222-2222-222222222222',
    '33333333-3333-3333-3333-333333333332',
    date '2026-05-11',
    'Clarify positioning and create more save-worthy founder education content.'
  );

insert into public.weekly_plan_items (
  id,
  weekly_plan_id,
  scheduled_for,
  content_type,
  topic,
  goal,
  cta,
  status,
  generated_content_id
)
values
  (
    '99999999-9999-9999-9999-999999999991',
    '77777777-7777-7777-7777-777777777777',
    '2026-05-12T09:00:00Z',
    'carousel',
    '3 tattoo myths first-timers still believe',
    'educate',
    'Save this before your first appointment.',
    'readyToPost',
    '66666666-6666-6666-6666-666666666661'
  ),
  (
    '99999999-9999-9999-9999-999999999992',
    '77777777-7777-7777-7777-777777777777',
    '2026-05-15T16:00:00Z',
    'story',
    'Ask followers what they wish they knew before their first tattoo',
    'improveEngagement',
    'Reply with your question and I will answer it tomorrow.',
    'draft',
    null
  ),
  (
    '99999999-9999-9999-9999-999999999993',
    '88888888-8888-8888-8888-888888888888',
    '2026-05-13T08:30:00Z',
    'reel',
    'The founder bio line that instantly sounds clearer',
    'buildPersonalBrand',
    'Save this before you rewrite your bio.',
    'draft',
    '66666666-6666-6666-6666-666666666662'
  );

insert into public.usage_events (
  user_id,
  event_type,
  quantity,
  metadata
)
values
  (
    '11111111-1111-1111-1111-111111111111',
    'contentGeneration',
    1,
    '{"source":"seed","generatedContentId":"66666666-6666-6666-6666-666666666661"}'::jsonb
  ),
  (
    '11111111-1111-1111-1111-111111111111',
    'weeklyPlanGeneration',
    1,
    '{"source":"seed","weeklyPlanId":"77777777-7777-7777-7777-777777777777"}'::jsonb
  ),
  (
    '22222222-2222-2222-2222-222222222222',
    'contentGeneration',
    1,
    '{"source":"seed","generatedContentId":"66666666-6666-6666-6666-666666666662"}'::jsonb
  );
