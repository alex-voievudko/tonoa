# supabase_auth_client

Thin wrapper around Supabase auth for the Tonoa app.

## Public API

- `SupabaseAuthClient` — production wrapper around `supabase_flutter`'s `GoTrueClient` (email OTP, sign out, session state stream).
- `FakeSupabaseAuthClient` — in-memory double for repository and widget tests.
- `SupabaseAuthFailure` sealed hierarchy exposing `Network*`, `InvalidOtp*`, `ExpiredOtp*`, `RateLimited*`, `Unknown*`.

Part of the Tonoa workspace — see the root `README.md` and `docs/plan/ai-instagram-content-coach-architecture-and-roadmap.md`.
