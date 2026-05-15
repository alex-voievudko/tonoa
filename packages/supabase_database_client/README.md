# supabase_database_client

Thin wrapper around Supabase Postgres access for the Tonoa app.

## Public API

- `SupabaseDatabaseClient` — generic `select` / `insert` / `update` / `delete` / `rpc` helpers over `supabase_flutter`. Repositories compose this; feature code never imports it.
- `FakeSupabaseDatabaseClient` — in-memory table store for repository tests, with seedable rows, RPC stubs, and per-method failure injection.
- `SupabaseDatabaseFailure` sealed hierarchy: `Network*`, `NotFound*`, `Conflict*`, `Unauthorized*`, `Unknown*` (mapped from `PostgrestException` codes).

Part of the Tonoa workspace — see the root `README.md` and `docs/plan/ai-instagram-content-coach-architecture-and-roadmap.md`.
