import 'package:app_config/app_config.dart';
import 'package:test/test.dart';

void main() {
  group('AppConfig', () {
    test('development exposes the development flavor', () {
      const config = AppConfig.development();

      expect(config.flavor, Flavor.development);
      expect(config.supabaseUrl, 'SUPABASE_URL_DEVELOPMENT');
      expect(
        config.supabasePublishableKey,
        'SUPABASE_PUBLISHABLE_KEY_DEVELOPMENT',
      );
    });

    test('staging exposes the staging flavor', () {
      const config = AppConfig.staging();

      expect(config.flavor, Flavor.staging);
      expect(config.supabaseUrl, 'SUPABASE_URL_STAGING');
      expect(
        config.supabasePublishableKey,
        'SUPABASE_PUBLISHABLE_KEY_STAGING',
      );
    });

    test('production exposes the production flavor', () {
      const config = AppConfig.production();

      expect(config.flavor, Flavor.production);
      expect(config.supabaseUrl, 'SUPABASE_URL_PRODUCTION');
      expect(
        config.supabasePublishableKey,
        'SUPABASE_PUBLISHABLE_KEY_PRODUCTION',
      );
    });
  });
}
