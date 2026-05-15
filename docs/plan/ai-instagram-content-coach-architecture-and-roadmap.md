# AI Instagram Content Coach Architecture and Roadmap

**Date:** 2026-05-15

**Product goal:** Build a mobile-first AI Instagram content coach that helps creators and small businesses decide what to post next, generate captions and Reel scripts, audit their profile, and save reusable content.

**Architecture goal:** Use a Very Good Ventures style layered architecture with a multi-package workspace, Supabase-owned backend contracts, Bloc/Cubit feature state, typed navigation, generated immutable models, and testable repository boundaries.

---

## 1. Product Scope Decisions

- Target platforms: iOS and Android only for MVP.
- Authentication: Supabase email OTP only for the first release.
- Brand model: one Brand Profile per user for MVP.
- AI provider: Gemini 2.5 Flash for development, staging, and production.
- AI execution: Supabase Edge Functions only. The Flutter app must never call AI providers directly.
- Development AI: development flavor calls real AI through Supabase so output quality can be evaluated early.
- Automated tests: use deterministic fake AI clients and repository fakes.
- State management: Bloc/Cubit throughout.
- Monetization: usage limits are part of MVP architecture; RevenueCat/paywall integration is a later milestone.
- Repository structure: VGV-style multi-package workspace from the start.

---

## 2. Recommended Architecture

Use a layered, package-oriented structure inspired by VGV's Supabase example:

```text
tonoa/
  lib/
    app/
    bootstrap.dart
    main_development.dart
    main_staging.dart
    main_production.dart
    router/
    theme/
    l10n/
    auth/
    onboarding/
    home/
    coach/
    weekly_plan/
    library/
    profile/
    paywall/
  packages/
    ai_client/
    ai_provider_contracts/
    analytics_repository/
    app_config/
    auth_repository/
    brand_repository/
    content_repository/
    form_inputs/
    generated_content_repository/
    instagram_coach_models/
    storage_client/
    supabase_ai_client/
    supabase_auth_client/
    supabase_database_client/
    usage_repository/
    user_repository/
  supabase/
    config.toml
    migrations/
    functions/
      generate-content/
      profile-audit/
      usage-status/
    seed.sql
  docs/
    plan/
```

### Layer Rules

- Flutter feature modules own presentation only: pages, widgets, Cubits/Blocs, and route-specific view models.
- Repositories own app-facing business operations and hide Supabase/client details.
- Client packages own transport details: Supabase Auth, Supabase PostgREST/RPC, Edge Function invocation, local storage.
- Model packages own immutable domain/data models and JSON serialization.
- Supabase migrations own tables, RLS policies, RPC helpers, triggers, indexes, and usage-limit enforcement.
- Edge Functions own AI provider calls, prompt assembly, output normalization, and provider-specific error handling.
- Data flows upward only: client packages -> repositories -> feature Blocs/Cubits -> widgets.

---

## 3. Package Responsibilities

### `packages/app_config`

Flavor-aware configuration:

- Supabase URL
- Supabase publishable key
- environment name
- Edge Function names
- feature flags
- usage plan defaults

Do not store provider secrets in Flutter config.

### `packages/instagram_coach_models`

Generated immutable models using `freezed` and `json_serializable`:

- `AppUser`
- `BrandProfile`
- `ProfileAudit`
- `ContentIdea`
- `GeneratedContent`
- `WeeklyPlan`
- `WeeklyPlanItem`
- `UsageEntitlement`
- `AiGenerationRequest`
- `AiGenerationResult`
- enums for account type, niche, goal, tone, language, content type, content status, generation type

### `packages/supabase_auth_client`

Thin wrapper around Supabase auth:

- send email OTP
- verify email OTP token
- sign out
- observe auth state
- expose current session/user id

### `packages/supabase_database_client`

Thin typed wrapper around Supabase database access:

- select/insert/update/delete rows
- call RPC functions
- map Supabase exceptions to client failures
- avoid business-specific decisions

### `packages/supabase_ai_client`

Thin wrapper for Supabase Edge Function invocation:

- call `generate-content`
- call `profile-audit`
- call `usage-status`
- attach current access token
- normalize transport failures

### `packages/ai_provider_contracts`

Shared request and response contracts used by the Flutter client, repositories, and Supabase Edge Function tests. This package keeps AI tool names, schema versions, and output contracts consistent without exposing provider SDKs to the app.

### `packages/storage_client`

Local storage wrapper:

- cache onboarding drafts
- cache last selected tab/state if needed
- no sensitive provider keys

### Repository Packages

- `auth_repository`: app auth session, OTP flow, auth state stream.
- `user_repository`: user profile bootstrap and user identity.
- `brand_repository`: create, read, and update the user's single Brand Profile.
- `content_repository`: content ideas, generated content, library actions, status updates.
- `generated_content_repository`: AI generation workflows and save/regenerate/copy metadata.
- `usage_repository`: usage counters, free limits, entitlement status.
- `analytics_repository`: no-op first, then event tracking later without touching features.

### `packages/form_inputs`

Formz inputs shared by auth, onboarding, and tools:

- email
- OTP code
- non-empty text
- short text
- Instagram handle
- URL
- optional URL
- posting frequency
- enum selection

---

## 4. Flutter App Structure

### `lib/app`

Application composition:

- `App`
- root `MultiRepositoryProvider`
- root `BlocProvider`s
- `MaterialApp.router`
- app-level auth/onboarding redirect state

### `lib/router`

Typed navigation using `go_router` and `go_router_builder`:

- welcome route
- auth route
- OTP verification route
- onboarding routes
- shell tab route
- home route
- coach routes
- weekly plan route
- library route
- profile/settings route
- paywall route

Routing redirects should depend on:

- auth status
- brand profile completion
- usage/paywall state only when needed

### Feature Modules

Each feature follows VGV-style local structure:

```text
feature_name/
  cubit/
  models/
  view/
  widgets/
  feature_name.dart
```

Recommended feature modules:

- `welcome`: product value and primary CTA.
- `auth`: email entry, OTP entry with `pinput`, resend timer, auth errors.
- `onboarding`: multi-step Brand Profile creation.
- `home`: suggested action, plan preview, quick actions.
- `coach`: AI tool selection and shared generation states.
- `profile_audit`: manual profile audit form and result view.
- `content_ideas`: idea generation, save, copy, generate caption/script from idea.
- `reel_script`: script generation and result view.
- `caption`: caption generation and alternatives.
- `weekly_plan`: weekly plan generation, list by day, expand plan item.
- `library`: saved content list, filters, copy, delete, status updates.
- `profile`: Brand Profile editing and settings.
- `usage`: usage status components and upgrade prompts.
- `paywall`: first upgrade prompt screen, with RevenueCat integration deferred until the paid-subscription milestone.

---

## 5. Supabase Backend Architecture

### Tables

- `profiles`
- `brand_profiles`
- `profile_audits`
- `content_ideas`
- `generated_contents`
- `weekly_plans`
- `weekly_plan_items`
- `usage_events`
- `usage_entitlements`
- `subscriptions`

### MVP RLS Rules

- Every public table has RLS enabled.
- Users can select/insert/update/delete only rows where `user_id = auth.uid()`.
- `profiles.id` references `auth.users.id`.
- One active Brand Profile per user is enforced with a unique index on `brand_profiles(user_id)`.
- Weekly plan items are accessible through the owning weekly plan user.
- Usage events are append-only for users; privileged adjustments happen through Edge Functions or private RPC.

### Edge Functions

#### `generate-content`

Handles:

- content ideas
- caption generation
- Reel script generation
- weekly plan generation
- rewrite/tone/language variants later

Responsibilities:

- authenticate user
- fetch Brand Profile
- check usage entitlement
- build prompt
- call Gemini 2.5 Flash
- validate structured output
- persist generated content when requested
- record usage event
- return typed JSON

#### `profile-audit`

Handles profile audit separately because the input and output shape are distinct:

- authenticate user
- fetch Brand Profile
- check usage entitlement
- call Gemini 2.5 Flash
- validate score and sections
- persist audit
- record usage event

#### `usage-status`

Returns:

- current plan
- monthly generation count
- profile audit count
- weekly plan count
- remaining quota
- paywall flags

### AI Output Strategy

Use strict JSON response contracts per generation type. Edge Functions should reject invalid model output and return a recoverable error to the app. The mobile app should display friendly retry states and never parse free-form prose for core UI.

---

## 6. Data Model Notes

Use app-facing models in `instagram_coach_models`, with Supabase row mappings handled in client/repository packages.

Important IDs:

- Use UUIDs from Supabase for persisted entities.
- Use `auth.uid()` as `user_id`.
- Keep `brand_profile_id` on content tables even though MVP has one Brand Profile per user.

Important statuses:

- content status: `idea`, `draft`, `readyToPost`, `posted`
- generation type: `contentIdeas`, `caption`, `reelScript`, `weeklyPlan`, `profileAudit`
- usage event source: `generateContent`, `profileAudit`, `regenerate`

---

## 7. Recommended Dependencies

### App Dependencies

- `flutter_bloc`
- `bloc`
- `go_router`
- `go_router_builder`
- `supabase_flutter`
- `freezed_annotation`
- `json_annotation`
- `formz`
- `pinput`
- `hugeicons`
- `equatable`
- `intl`
- `url_launcher`
- `flutter_secure_storage`
- `shared_preferences`
- `collection`
- `clock`

### Dev Dependencies

- `build_runner`
- `freezed`
- `json_serializable`
- `go_router_builder`
- `bloc_test`
- `mocktail`
- `very_good_analysis`
- `bloc_lint`

### Deferred Dependencies

- `revenuecat` package for subscriptions after the core AI flows prove product value.
- push notification package only after reminders become part of scope.

---

## 8. Milestone Roadmap

Each milestone should be built as one focused PR. PRs should include tests, generated code, and docs updates for changed contracts.

### PR 1: Workspace and Architecture Foundation

Goal: Convert the bootstrapped app into the agreed multi-package VGV workspace.

Tasks:

- Add `packages/` workspace packages.
- Configure package analysis options.
- Add `melos` for workspace bootstrap, package scripts, and shared test commands.
- Add shared package dependency wiring.
- Remove counter feature from app and tests.
- Add app config package and flavor config loading.
- Add initial app theme and non-functional route shell screens.
- Add root documentation for package layering rules.

Exit criteria:

- `dart format` passes.
- `dart analyze` passes.
- Flutter tests pass.
- Empty app shell launches for development flavor.

### PR 2: Core Models and Form Inputs

Goal: Establish typed domain contracts before building feature UI.

Tasks:

- Add `instagram_coach_models` with Freezed models/enums.
- Add JSON serialization.
- Add `form_inputs` with Formz validators.
- Add tests for model JSON round trips.
- Add tests for validation edge cases.
- Document model naming and persistence mapping rules.

Exit criteria:

- Generated code is committed.
- Model package tests pass.
- App package can depend on the model package.

### PR 3: Supabase Local Project, Schema, and RLS

Goal: Own backend schema and security in this repo.

Tasks:

- Add `supabase/` project setup.
- Create migrations for MVP tables.
- Add RLS policies for user-owned data.
- Add indexes for user/time/status queries.
- Add seed data for local development.
- Add database README with local setup commands.
- Run Supabase advisors after schema changes.

Exit criteria:

- Local Supabase starts.
- Migrations apply from scratch.
- RLS policies prevent cross-user access.
- Advisors have no unresolved critical security issues.

### PR 4: Supabase Client Packages

Goal: Create thin, testable clients for auth, database, and Edge Function transport.

Tasks:

- Implement `supabase_auth_client`.
- Implement `supabase_database_client`.
- Implement `supabase_ai_client`.
- Add typed failures.
- Add fake clients for tests.
- Add unit tests for success and failure mapping.

Exit criteria:

- Client packages have isolated tests.
- No feature code imports raw Supabase APIs directly.

### PR 5: Repository Layer

Goal: Add app-facing repositories above clients.

Tasks:

- Implement `auth_repository`.
- Implement `user_repository`.
- Implement `brand_repository`.
- Implement `content_repository`.
- Implement `generated_content_repository`.
- Implement `usage_repository`.
- Add repository fake/test implementations.
- Add unit tests for repository behavior.

Exit criteria:

- Repositories hide Supabase details.
- App can be bootstrapped with real or fake repositories.

### PR 6: Typed Router and App Session Flow

Goal: Replace starter `MaterialApp` with typed route-based app flow.

Tasks:

- Add `go_router` and `go_router_builder`.
- Add route data classes.
- Add auth/onboarding redirects.
- Add tab shell.
- Add non-functional shell screens for all MVP areas.
- Add route tests for auth and onboarding states.

Exit criteria:

- Unauthenticated user lands on welcome/auth flow.
- Authenticated user without Brand Profile lands in onboarding.
- Authenticated user with Brand Profile lands in app shell.

### PR 7: Email OTP Authentication

Goal: Make the first real user journey work.

Tasks:

- Build email entry screen.
- Build OTP verification screen using `pinput`.
- Add resend flow and loading/error states.
- Wire auth Cubit to `auth_repository`.
- Add widget tests for validation and happy/error paths.

Exit criteria:

- User can request and verify email OTP.
- Auth state persists across app restart.
- Sign out works from the first settings screen.

### PR 8: Onboarding and Brand Profile Creation

Goal: Capture the Brand Profile that personalizes all AI output.

Tasks:

- Build multi-step onboarding flow.
- Add account type, niche, goal, audience, tone, language, frequency, and offer inputs.
- Persist Brand Profile to Supabase.
- Add draft caching if the user leaves mid-flow.
- Add Brand Profile completion redirect.
- Add tests for Cubit state and form validation.

Exit criteria:

- New authenticated user completes onboarding once.
- Brand Profile is stored and loaded on next app start.

### PR 9: Main App Shell and Home

Goal: Establish the daily app experience.

Tasks:

- Build bottom tab shell.
- Add Home tab with basic suggested action logic.
- Add quick actions to coach tools.
- Add current weekly plan preview empty state.
- Add Profile tab with basic sign out and Brand Profile link.
- Add navigation/widget tests.

Exit criteria:

- User can navigate through Home, Coach, Plan, Library, and Profile tabs.

### PR 10: Gemini Edge Function Foundation

Goal: Make real AI generation available through Supabase.

Tasks:

- Add shared Edge Function utilities.
- Add Gemini provider wrapper.
- Add prompt contract types.
- Add environment secret documentation.
- Implement `generate-content` for one generation type first.
- Add function tests or local invocation scripts.
- Add app-side integration through `supabase_ai_client`.

Exit criteria:

- Development flavor can call Gemini through Supabase Edge Functions.
- Provider secrets are never present in Flutter code.

### PR 11: Content Ideas Generator

Goal: Ship the first complete AI tool.

Tasks:

- Add content ideas request UI.
- Generate 10 structured ideas.
- Display title, format, goal, description, and why it works.
- Save ideas to library.
- Copy idea text.
- Generate caption/script from an idea as navigation entrypoints.
- Add Cubit and widget tests with fake AI responses.

Exit criteria:

- User can generate, view, save, and copy content ideas.

### PR 12: Caption Generator

Goal: Add reusable caption generation.

Tasks:

- Add caption input modes: idea, custom topic, draft text.
- Add caption type selector.
- Generate main caption, CTA, hashtags, and alternatives.
- Save generated captions.
- Copy caption sections.
- Add tests for generation states and saved content.

Exit criteria:

- User can generate and save captions from an idea or custom input.

### PR 13: Reel Script Generator

Goal: Add the strongest short-form video generation flow.

Tasks:

- Add topic, duration, tone, and goal inputs.
- Generate hook, scenes, voiceover, text overlays, caption, CTA, and hashtags.
- Save generated scripts.
- Copy full script or individual sections.
- Add tests for form validation and output rendering.

Exit criteria:

- User can generate and save Reel scripts with structured sections.

### PR 14: Weekly Content Plan

Goal: Build the MVP "magic" feature.

Tasks:

- Add weekly plan request flow.
- Generate posts assigned to days.
- Persist weekly plan and items.
- Show weekly plan list by day.
- Expand item into script/caption/story text generation.
- Add status updates for plan items.
- Add tests for generation and persistence.

Exit criteria:

- User can generate a weekly plan and use items as starting points for content.

### PR 15: Profile Audit

Goal: Add profile improvement coaching.

Tasks:

- Build manual profile audit input form.
- Generate score, feedback sections, improved bio, and top fixes.
- Persist audits.
- Show latest audit in library/profile.
- Add tests for audit state and result rendering.

Exit criteria:

- User can run and save a profile audit without Instagram login.

### PR 16: Saved Content Library

Goal: Make generated value reusable.

Tasks:

- Build library list.
- Add filters by content type.
- Add detail views for ideas, captions, scripts, plans, and audits.
- Add copy actions.
- Add delete action.
- Add status changes: idea, draft, ready to post, posted.
- Add tests for filtering, deletion, and status updates.

Exit criteria:

- User can manage all saved AI outputs from one place.

### PR 17: Usage Limits

Goal: Enforce free-tier limits before monetization.

Tasks:

- Implement usage events and entitlement reads.
- Enforce limits inside Edge Functions.
- Add app usage status repository.
- Add upgrade prompt states.
- Add tests for limit reached and remaining quota states.

Exit criteria:

- Free limits are enforced server-side.
- App shows clear remaining quota and limit-reached UI.

### PR 18: Brand Profile Editing and Settings

Goal: Let users keep AI context accurate.

Tasks:

- Build Brand Profile edit screen.
- Add language and tone settings.
- Add common CTA, words to avoid, and special instructions.
- Ensure AI prompts use updated values.
- Add tests for edit validation and persistence.

Exit criteria:

- User can update Brand Profile and future generations use the new context.

### PR 19: App Polish and Reliability Pass

Goal: Make the MVP feel cohesive before monetization.

Tasks:

- Add consistent empty/loading/error states.
- Add retry affordances.
- Add copy success feedback.
- Add basic analytics events through repository interface.
- Add accessibility labels for icon buttons.
- Add localization coverage for visible strings.
- Add golden/widget tests for key screens where useful.

Exit criteria:

- Core flows feel consistent and recover gracefully from errors.

### PR 20: Paywall and RevenueCat

Goal: Add paid subscription after core value is working.

Tasks:

- Add RevenueCat package and configuration.
- Add subscription repository.
- Sync subscription status into Supabase entitlements.
- Build paywall screen.
- Gate usage limits by entitlement.
- Add sandbox purchase QA checklist.

Exit criteria:

- Pro entitlement lifts or expands usage limits.
- Subscription state survives app restart and backend checks.

### PR 21: Release Readiness

Goal: Prepare MVP for TestFlight/internal Android testing.

Tasks:

- Finalize app icons/splash per flavor.
- Add privacy policy links and settings entries.
- Add crash/error reporting decision and implementation if needed.
- Verify Supabase production RLS and secrets.
- Verify Gemini production quotas and budget alerts.
- Run complete iOS and Android smoke tests.
- Update README with setup, flavors, Supabase, and release commands.

Exit criteria:

- MVP is ready for controlled external testing.

---

## 9. Later Expansion

Do not include these in MVP PRs unless the product direction changes:

- Instagram login or Instagram API connection.
- Auto-posting and scheduling.
- Analytics ingestion.
- DM/comment automation.
- Competitor tracking.
- Canva-like editor.
- Video editing.
- Team collaboration.
- Multi-brand support.
- AI strategist chat.

---

## 10. Verification Standards

Every implementation PR should include:

- Unit tests for packages touched.
- Bloc/Cubit tests for feature state.
- Widget tests for user-visible flows.
- Generated code committed after `build_runner`.
- `dart format`.
- `dart analyze`.
- `flutter test`.
- Supabase migration verification when backend changes.
- Supabase advisor check after schema/RLS changes.

Recommended commands:

```sh
dart format .
dart analyze
flutter test
dart run build_runner build --delete-conflicting-outputs
supabase start
supabase db reset
supabase functions serve
```

---

## 11. References

- Very Good Ventures layered architecture guidance: https://engineering.verygood.ventures/architecture/
- Very Good Ventures Supabase example article: https://verygood.ventures/blog/flutter-app-very-good-cli-supabase/
- Supabase Dart email OTP reference: https://supabase.com/docs/reference/dart/auth-signinwithotp
- Supabase Dart OTP verification reference: https://supabase.com/docs/reference/dart/auth-verifyotp
- Supabase Dart Edge Function invocation reference: https://supabase.com/docs/reference/dart/functions-invoke
