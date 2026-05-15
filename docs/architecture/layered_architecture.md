# Tonoa Layered Architecture

This repository follows a package-oriented layered architecture inspired by Very Good Ventures.

## Layers

- `lib/` contains app presentation, composition, and feature UI.
- `packages/` contains reusable packages with narrow responsibilities.
- `supabase/` will contain backend schema, policies, and Edge Functions.

## Dependency Direction

- Presentation depends on app-facing packages.
- Packages do not depend on Flutter feature modules.
- Supabase details should stay behind package boundaries.

## PR 1 Scope

- Introduce the first shared package: `app_config`.
- Replace the demo counter app with a simple product shell.
- Prepare the repository for additional local packages and Supabase-owned backend code.
