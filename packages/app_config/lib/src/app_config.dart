enum Flavor { development, staging, production }

class AppConfig {
  const AppConfig({
    required this.flavor,
    required this.supabaseUrl,
    required this.supabasePublishableKey,
  });

  const AppConfig.development()
    : this(
        flavor: Flavor.development,
        supabaseUrl: 'SUPABASE_URL_DEVELOPMENT',
        supabasePublishableKey: 'SUPABASE_PUBLISHABLE_KEY_DEVELOPMENT',
      );

  const AppConfig.staging()
    : this(
        flavor: Flavor.staging,
        supabaseUrl: 'SUPABASE_URL_STAGING',
        supabasePublishableKey: 'SUPABASE_PUBLISHABLE_KEY_STAGING',
      );

  const AppConfig.production()
    : this(
        flavor: Flavor.production,
        supabaseUrl: 'SUPABASE_URL_PRODUCTION',
        supabasePublishableKey: 'SUPABASE_PUBLISHABLE_KEY_PRODUCTION',
      );

  final Flavor flavor;
  final String supabaseUrl;
  final String supabasePublishableKey;
}
