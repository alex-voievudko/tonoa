# Tonoa Model And Input Conventions

## Model package

- `instagram_coach_models` owns immutable domain contracts only.
- Models use `freezed` for equality and `copyWith`.
- Models use `json_serializable` for transport and persistence mapping.
- Enum names should be API-safe and stable because JSON uses enum names by default.
- App models should prefer explicit product language over backend column names when the app meaning is clearer.

## Persistence mapping

- App-facing fields stay in lower camel case.
- Database adapters can translate app fields to Supabase column names later.
- Every persisted model keeps explicit ids and timestamps in the model package.
- Nested generated content payloads stay structured as `Map<String, dynamic>` until provider-specific schemas justify stronger typing.

## Form input package

- `form_inputs` owns reusable validators only.
- Validators should be pure Dart and usable from Cubits, tests, and future packages.
- Validation errors should be enum-based so feature layers can localize messages later.
