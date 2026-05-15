import 'package:flutter_test/flutter_test.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:instagram_coach_models/instagram_coach_models.dart';

void main() {
  test('app workspace can import model and form packages', () {
    const email = EmailInput.dirty('hello@tonoa.ai');
    final profile = BrandProfile(
      id: 'brand-1',
      userId: 'user-1',
      businessName: 'Tonoa Studio',
      accountType: AccountType.creator,
      niche: Niche.photography,
      audience: 'Creators',
      offerDescription: 'Content strategy support',
      goals: const [InstagramGoal.getMoreClients],
      tone: const [BrandTone.professional],
      language: ContentLanguage.english,
      postingFrequency: PostingFrequency.threeTimesPerWeek,
      createdAt: DateTime.parse('2026-01-01T00:00:00.000Z'),
      updatedAt: DateTime.utc(2026, 1, 2),
    );

    expect(email.isValid, isTrue);
    expect(profile.businessName, 'Tonoa Studio');
  });
}
