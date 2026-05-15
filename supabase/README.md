# Supabase Local Development

This project keeps its database schema, row-level security, seed data, and Edge Functions in-repo under `supabase/`.

## Prerequisites

- [Supabase CLI](https://supabase.com/docs/guides/local-development/cli/getting-started)
- Docker Desktop or another Docker runtime

## Start the local stack

```bash
supabase start
```

Important local endpoints:

- API: `http://127.0.0.1:54321`
- Studio: `http://127.0.0.1:54323`
- Mailpit: `http://127.0.0.1:54324`
- Postgres: `postgresql://postgres:postgres@127.0.0.1:54322/postgres`

## Reset the database from migrations

Use this whenever a migration or seed file changes.

```bash
supabase db reset --local
```

The reset command replays every file in `supabase/migrations/` and then loads `supabase/seed.sql`.

## Verify schema quality

Run both commands after database changes:

```bash
supabase db lint --local --fail-on error
supabase db advisors --local --type all
```

## Useful commands

```bash
supabase migration list --local
supabase db query "select * from public.brand_profiles;"
supabase stop
```

## Seeded demo data

The seed file creates two local demo accounts:

- `demo@tonoa.app`
- `coach@tonoa.app`

Those rows exist so the app and repositories can be developed against realistic onboarding, content, weekly plan, and usage data. For OTP flow testing, use the local auth stack and inspect sent emails in Mailpit.

## Schema notes

- `public` contains app-facing tables and is protected with row-level security.
- `private` contains helper functions and trigger logic only.
- A trigger on `auth.users` automatically creates a `public.profiles` row and a default `public.usage_entitlements` row for each user.
