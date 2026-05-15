# supabase_ai_client

Thin wrapper around Supabase Edge Function invocation for the Tonoa app.

## Public API

- `SupabaseAiClient` — invokes the `generate-content`, `profile-audit`, and `usage-status` Edge Functions via `supabase_flutter`'s `FunctionsClient`. Returns the JSON object payload or throws a typed failure.
- `FakeSupabaseAiClient` — in-memory double with stubbed responses, payload recording, and per-method failure injection.
- `SupabaseAiFailure` sealed hierarchy: `Network*`, `Unauthorized*`, `RateLimited*`, `Server*`, `Unknown*` (mapped from `FunctionException` status codes).

Part of the Tonoa workspace — see the root `README.md` and `docs/plan/ai-instagram-content-coach-architecture-and-roadmap.md`.
