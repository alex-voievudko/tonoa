import 'package:instagram_coach_models/instagram_coach_models.dart';
import 'package:test/test.dart';

void main() {
  group('BrandProfile', () {
    test('round trips through json', () {
      final profile = BrandProfile(
        id: 'brand-1',
        userId: 'user-1',
        businessName: 'Tonoa Studio',
        accountType: AccountType.creator,
        niche: Niche.photography,
        audience: 'Creative founders in Barcelona',
        location: 'Barcelona',
        offerDescription: 'Brand photo sessions',
        goals: const [
          InstagramGoal.getMoreClients,
          InstagramGoal.buildPersonalBrand,
        ],
        tone: const [BrandTone.professional, BrandTone.educational],
        language: ContentLanguage.english,
        postingFrequency: PostingFrequency.threeTimesPerWeek,
        instagramHandle: '@tonoa.studio',
        createdAt: DateTime.parse('2026-01-01T00:00:00.000Z'),
        updatedAt: DateTime.utc(2026, 1, 2),
      );

      final encoded = profile.toJson();
      final decoded = BrandProfile.fromJson(encoded);

      expect(decoded, equals(profile));
      expect(encoded['accountType'], 'creator');
      expect(encoded['postingFrequency'], 'threeTimesPerWeek');
    });
  });

  group('GeneratedContent', () {
    test('round trips with nested ai result json', () {
      final content = GeneratedContent(
        id: 'generated-1',
        userId: 'user-1',
        brandProfileId: 'brand-1',
        type: GenerationType.caption,
        promptInput: const {'topic': 'New offer', 'tone': 'friendly'},
        result: AiGenerationResult(
          type: GenerationType.caption,
          content: const {
            'caption': 'Launch week starts now.',
            'cta': 'DM us for details.',
          },
          warnings: const ['Shorten CTA for stories'],
          generatedAt: DateTime.utc(2026, 1, 3),
        ),
        language: ContentLanguage.spanish,
        tone: const [BrandTone.friendly],
        isSaved: true,
        status: ContentStatus.readyToPost,
        createdAt: DateTime.utc(2026, 1, 3),
        updatedAt: DateTime.utc(2026, 1, 4),
        ideaId: 'idea-1',
      );

      final encoded = content.toJson();
      final decoded = GeneratedContent.fromJson(encoded);

      expect(decoded, equals(content));
      expect(encoded['result'], isA<Map<String, dynamic>>());
      expect(encoded['status'], 'readyToPost');
    });
  });

  group('WeeklyPlan', () {
    test('round trips with plan items', () {
      final plan = WeeklyPlan(
        id: 'plan-1',
        userId: 'user-1',
        brandProfileId: 'brand-1',
        weekStartDate: DateTime.utc(2026, 1, 5),
        goal: 'Book three tattoo consultations',
        items: [
          WeeklyPlanItem(
            id: 'item-1',
            weeklyPlanId: 'plan-1',
            scheduledFor: DateTime.utc(2026, 1, 5),
            contentType: ContentType.reel,
            topic: 'Three things to know before booking',
            goal: InstagramGoal.educate,
            cta: 'DM BOOK to claim a slot',
            status: ContentStatus.draft,
            createdAt: DateTime.utc(2026, 1, 5),
            updatedAt: DateTime.utc(2026, 1, 5),
            generatedContentId: 'generated-1',
          ),
        ],
        createdAt: DateTime.utc(2026, 1, 4),
        updatedAt: DateTime.utc(2026, 1, 5),
      );

      final encoded = plan.toJson();
      final decoded = WeeklyPlan.fromJson(encoded);

      expect(decoded, equals(plan));
      expect(decoded.items, hasLength(1));
      expect(encoded['items'], isA<List<dynamic>>());
    });
  });

  group('AiGenerationRequest', () {
    test('supports copyWith for request refinement', () {
      const request = AiGenerationRequest(
        brandProfileId: 'brand-1',
        type: GenerationType.reelScript,
        goal: InstagramGoal.sellServices,
        language: ContentLanguage.english,
        tone: [BrandTone.bold],
        constraints: {'duration': 30},
        input: {'topic': 'Fine line tattoos'},
      );

      final updated = request.copyWith(
        constraints: const {'duration': 60},
        tone: const [BrandTone.bold, BrandTone.educational],
      );

      expect(updated.constraints['duration'], 60);
      expect(updated.tone, hasLength(2));
      expect(request.constraints['duration'], 30);
    });
  });
}
