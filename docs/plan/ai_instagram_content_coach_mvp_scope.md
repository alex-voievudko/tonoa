# AI Instagram Content Coach — MVP Scope

## 1. Product Concept

**AI Instagram Content Coach** is a mobile app for small creators and businesses that helps them understand what to post, how to write better content, and how to improve their Instagram presence.

The app acts as a personalized AI content strategist. It helps users generate content ideas, Reel scripts, captions, weekly content plans, and profile improvement suggestions based on their business, niche, audience, tone, and goals.

## 2. Core Promise

> Help small creators and businesses know what to post, how to say it, and how to improve their Instagram presence.

The MVP should focus on content strategy and content generation, not on full Instagram account management.

The first version should solve this problem:

> “I want to grow or sell through Instagram, but I don’t know what to post, how to write captions, or whether my profile is good.”

## 3. Target Users

### 3.1 Primary Users

The app targets Instagram-based creators, freelancers, and small businesses, such as:

- Tattoo artists
- Beauty specialists
- Fitness coaches
- Photographers
- Designers
- Handmade product sellers
- Restaurants and cafes
- Local service providers
- Consultants and coaches
- Solo entrepreneurs

### 3.2 User Maturity

The ideal early users are people who:

- Already post on Instagram sometimes
- Have a service, product, or personal brand to promote
- Struggle with posting consistently
- Do not have a content strategist or marketing team
- Are willing to pay for practical content help

The MVP should avoid targeting big influencers or advanced social media teams because they usually need deeper analytics, collaboration tools, scheduling, and advanced automation.

## 4. MVP Positioning

The app should not be positioned as just another AI caption generator.

Weak positioning:

> AI caption generator

Better positioning:

> Your AI Instagram content strategist.

Alternative positioning:

> Know what to post next.

Landing page style copy:

> Get content ideas, Reel scripts, captions, and a weekly Instagram plan tailored to your business.

Another version:

> Your AI content strategist for Instagram. Plan better posts, write better captions, and turn your business into consistent content.

## 5. MVP User Flow

### 5.1 Welcome Screen

The welcome screen should clearly communicate the product value.

Example copy:

> Your AI Instagram content coach. Get profile feedback, content ideas, captions, and a weekly posting plan tailored to your business.

Primary CTA:

> Get started

### 5.2 Authentication

Suggested authentication options:

- Email OTP
- Continue with Apple
- Continue with Google

For MVP, email OTP can be enough if speed of development is important.

### 5.3 Onboarding

The app needs to understand the user’s business, audience, tone, and goals. This information becomes the user’s **Brand Profile** and should be reused in all AI generations.

Required onboarding questions:

1. **What type of account are you?**
   - Creator
   - Local business
   - Online business
   - Freelancer / solo professional
   - Other

2. **What is your niche?**
   - Tattoo artist
   - Beauty
   - Fitness
   - Food
   - Fashion
   - Photography
   - Coaching
   - Handmade products
   - Other

3. **What is your main goal?**
   - Get more followers
   - Get more clients
   - Sell products/services
   - Improve engagement
   - Post more consistently
   - Build personal brand

4. **Who is your target audience?**
   - Free text input

5. **What tone should your content have?**
   - Friendly
   - Professional
   - Funny
   - Luxury
   - Bold
   - Educational
   - Personal

6. **What language do you post in?**
   - English
   - Spanish
   - Ukrainian
   - Russian
   - Other

7. **How often do you want to post?**
   - 2 times per week
   - 3 times per week
   - 5 times per week
   - Daily

8. **What do you offer?**
   - Free text input for services, products, price range, location, booking process, etc.

## 6. MVP Features

## 6.1 Brand Profile

### Description

The Brand Profile is the foundation of the app. It stores the user’s business context and personalizes all AI outputs.

### User Can Edit

- Business name
- Account type
- Niche
- Location
- Target audience
- Offer/products/services
- Brand tone
- Content language
- Main Instagram goal
- Posting frequency
- Instagram handle
- Special notes

### Why This Matters

Without a Brand Profile, the app becomes a generic AI prompt tool. With a Brand Profile, the app feels personalized and useful.

### MVP Requirements

- User can create a Brand Profile during onboarding.
- User can edit the Brand Profile later.
- AI tools use Brand Profile context automatically.
- Brand Profile should be stored in the backend.

## 6.2 Profile Audit

### Description

The Profile Audit helps users improve their Instagram profile by giving feedback on clarity, positioning, trust signals, and call-to-action.

### MVP Input

User manually enters:

- Instagram handle
- Bio text
- Profile category
- Link in bio
- Description of profile photo
- Highlights list
- Pinned posts description

Optional MVP enhancement:

- User uploads screenshots of their Instagram profile.

### AI Output

The AI should return:

- Overall score from 0 to 100
- Bio feedback
- Clarity feedback
- CTA feedback
- Trust signals feedback
- Niche positioning feedback
- Suggested improved bio
- Top 5 fixes

### Example Output

**Score: 68/100**

Your profile explains what you do, but it does not clearly tell people why they should follow you or how to book.

Suggested bio:

```text
Fine line tattoo artist in Barcelona
Custom minimal tattoos & delicate lettering
DM “BOOK” for appointments
↓ Portfolio & booking info
```

Top fixes:

1. Add location.
2. Add a clear booking CTA.
3. Mention your tattoo style.
4. Use highlights for healed work, prices, booking, and FAQ.
5. Pin one post that explains your process.

## 6.3 Content Ideas Generator

### Description

The Content Ideas Generator helps users find topics for posts, Reels, carousels, and stories.

### User Inputs

- Content goal
- Content type
- Optional topic

### Content Goals

- Grow audience
- Sell service/product
- Educate
- Build trust
- Entertain
- Announce availability
- Promote offer

### Content Types

- Reel
- Carousel
- Story
- Static post
- Mixed

### AI Output

The AI should return 10 content ideas. Each idea should include:

- Title
- Format
- Goal
- Short description
- Why it works

### User Actions

- Save idea
- Copy idea
- Generate caption from idea
- Generate Reel script from idea

### Example Ideas

1. **3 things to know before your first fine line tattoo**
   - Format: Reel
   - Goal: Educate
   - Why it works: Helps nervous first-time clients.

2. **Healed vs fresh tattoo: what’s normal?**
   - Format: Carousel
   - Goal: Build trust
   - Why it works: Shows expertise and reduces client anxiety.

## 6.4 Reel Script Generator

### Description

The Reel Script Generator helps users create short-form video scripts for Instagram Reels.

This should be one of the strongest MVP features because many creators and small businesses know they should post Reels, but they do not know what to say or how to structure the content.

### User Inputs

- Topic
- Duration: 15s / 30s / 60s
- Tone
- Goal

### AI Output

The AI should generate:

- Hook
- Scene-by-scene script
- Voiceover
- Text overlays
- Caption
- CTA
- Hashtags

### Example Output

**Reel idea:** 3 mistakes before getting your first tattoo

**Hook:**

> Getting your first tattoo? Avoid these 3 mistakes.

**Scene 1:**

Show sketch/design preparation.

Text overlay:

> Mistake #1: Choosing size only by price

**Scene 2:**

Show placement example.

Text overlay:

> Mistake #2: Ignoring placement

**Scene 3:**

Show healed tattoo.

Text overlay:

> Mistake #3: Not checking healed work

**CTA:**

> Save this before booking your first tattoo.

## 6.5 Caption Generator

### Description

The Caption Generator helps users create Instagram captions from an idea, topic, draft, or Reel script.

### User Inputs

User can generate a caption from:

- Content idea
- Custom topic
- Uploaded draft
- Reel script

### Caption Types

- Short caption
- Storytelling caption
- Sales caption
- Educational caption
- Friendly caption
- Luxury tone caption

### AI Output

Each generated caption should include:

- Main caption
- CTA
- Hashtags
- Optional emojis
- Alternative versions

### Important Note

Caption generation is useful, but it should not be the main identity of the app. The app should feel like a content coach, not only a caption generator.

## 6.6 Weekly Content Plan

### Description

The Weekly Content Plan is the main “magic” feature of the MVP. It gives users a clear plan for what to post during the week.

### User Inputs

- Goal for the week
- Number of posts
- Content mix
- Optional special promotion/event

### AI Output

The AI should generate a weekly plan with posts assigned to specific days.

Each item should include:

- Day
- Content type
- Topic
- Goal
- CTA
- Short explanation

### Example Plan

**Monday — Reel**

- Topic: 3 things to know before booking
- Goal: Educate
- CTA: DM me “BOOK” for available dates

**Wednesday — Story**

- Topic: Behind-the-scenes sketching
- Goal: Build trust
- CTA: Poll: “Would you get this style?”

**Friday — Carousel**

- Topic: Aftercare mistakes
- Goal: Educate/saveable content
- CTA: Save this for your next tattoo

### User Actions

Each plan item can be opened and expanded into:

- Script
- Caption
- Hashtags
- Story text
- Visual instructions

## 6.7 Saved Content Library

### Description

Users need to save and organize their AI-generated content.

### Content That Can Be Saved

- Ideas
- Captions
- Scripts
- Weekly plans
- Profile audits

### Basic Statuses

- Idea
- Draft
- Ready to post
- Posted

### MVP Requirements

- User can save generated content.
- User can view saved content in a library.
- User can filter content by type.
- User can copy saved content.
- User can delete saved content.

For MVP, real Instagram scheduling is not required.

## 7. MVP Navigation

The app should be simple and easy to understand. Suggested structure: 4–5 tabs.

## 7.1 Home Tab

Shows:

- Today’s suggested action
- Current weekly plan preview
- Quick buttons:
  - Generate idea
  - Create caption
  - Create Reel script
  - Audit profile

Example:

> Today’s action: Create an educational Reel — “3 mistakes clients make before booking”

## 7.2 Coach Tab

Main AI tools:

- Profile Audit
- Content Ideas
- Reel Script
- Caption Generator
- Weekly Plan

## 7.3 Calendar / Plan Tab

Shows the weekly plan.

MVP can be simple:

- List by day
- Content type
- Topic
- Status

No actual Instagram scheduling is required in MVP.

## 7.4 Library Tab

Shows saved content:

- Ideas
- Captions
- Scripts
- Audits
- Weekly plans

## 7.5 Profile / Settings Tab

Contains:

- Brand Profile
- Language
- Tone
- Subscription
- App settings

## 8. MVP Screens

1. Welcome screen
2. Auth screen
3. Onboarding flow
4. Home screen
5. AI Tool Selection screen
6. Content Ideas screen
7. Reel Script screen
8. Caption screen
9. Weekly Plan screen
10. Library screen
11. Profile Audit screen
12. Brand Profile / Settings screen
13. Paywall screen

## 9. AI Requirements

## 9.1 AI Use Cases

The AI should support:

1. Generate content ideas.
2. Generate captions.
3. Generate Reel scripts.
4. Audit Instagram profile.
5. Create weekly content plan.
6. Rewrite content in different tones.
7. Translate/localize content.

## 9.2 Brand Voice Memory

The app should remember:

- Tone
- Niche
- Audience
- Offers
- Common CTA
- Preferred language
- Words to avoid
- Special instructions

This makes the app feel more valuable than simply opening ChatGPT.

## 9.3 Prompting Principles

Prompts should always include:

- Brand Profile context
- User’s goal
- Desired format
- Desired tone
- Desired language
- Output structure
- Constraints, such as length or number of ideas

## 10. Data Model Draft

## 10.1 User

```text
User
- id
- email
- name
- createdAt
```

## 10.2 BrandProfile

```text
BrandProfile
- id
- userId
- businessName
- accountType
- niche
- audience
- location
- offerDescription
- goals
- tone
- language
- postingFrequency
- instagramHandle
- notes
- createdAt
- updatedAt
```

## 10.3 ProfileAudit

```text
ProfileAudit
- id
- userId
- brandProfileId
- inputBio
- inputHighlights
- inputPinnedPosts
- score
- feedback
- suggestedBio
- fixes
- createdAt
```

## 10.4 ContentIdea

```text
ContentIdea
- id
- userId
- brandProfileId
- title
- format
- goal
- description
- status
- createdAt
- updatedAt
```

## 10.5 GeneratedContent

```text
GeneratedContent
- id
- userId
- brandProfileId
- ideaId optional
- type: caption / reel_script / carousel / story / weekly_plan_item
- promptInput
- output
- language
- tone
- saved
- status
- createdAt
- updatedAt
```

## 10.6 WeeklyPlan

```text
WeeklyPlan
- id
- userId
- brandProfileId
- weekStartDate
- goal
- createdAt
- updatedAt
```

## 10.7 WeeklyPlanItem

```text
WeeklyPlanItem
- id
- weeklyPlanId
- date
- contentType
- topic
- goal
- cta
- status
- generatedContentId optional
- createdAt
- updatedAt
```

## 11. Monetization

## 11.1 Suggested Model

Launch with a freemium subscription model.

## 11.2 Free Plan

Includes:

- 1 profile audit
- 10 AI generations per month
- 1 weekly plan per month
- Limited saved items

## 11.3 Pro Plan

Suggested price:

> €7.99–€12.99/month

Includes:

- Higher or unlimited AI generation limit
- Weekly content plans
- Saved content library
- Advanced profile audits
- Multilingual rewrites
- Custom brand voice

## 11.4 Business Plan Later

Suggested price:

> €19.99–€29.99/month

Potential features:

- Multiple brands/accounts
- Advanced calendar
- Analytics
- DM/comment tools
- Team collaboration

## 12. Technical Scope

## 12.1 Mobile App

Suggested stack:

- Flutter
- `go_router` for navigation
- `flutter_bloc` or Riverpod for state management
- Supabase or Firebase for auth/backend
- RevenueCat for subscriptions
- OpenAI API or another LLM provider for AI generation
- Local storage for draft caching

## 12.2 Backend

AI calls should not be made directly from the mobile app. The app needs a backend to keep API keys secure and manage limits.

Backend responsibilities:

- Store Brand Profile
- Store generated content
- Call AI API securely
- Manage prompt templates
- Enforce usage limits
- Manage subscription status
- Keep API keys private

Suggested MVP backend:

> Supabase + Edge Functions + RevenueCat + OpenAI API

Alternative backend options:

- Firebase + Cloud Functions
- Node.js API
- Hono/Bun API
- NestJS API

## 13. Must-Have vs Nice-to-Have

## 13.1 Must-Have

- Authentication
- Onboarding
- Brand Profile
- Content Ideas Generator
- Reel Script Generator
- Caption Generator
- Weekly Plan Generator
- Saved Library
- Usage limits
- Subscription/paywall
- Copy-to-clipboard
- Regenerate output

## 13.2 Nice-to-Have

- Profile screenshot upload
- Profile audit score
- Calendar view
- Hashtag groups
- AI translations
- Content status: idea/draft/ready/posted
- Push reminders
- Multi-brand support

## 13.3 Not in MVP

Avoid these in the first version:

- Instagram auto-posting
- Instagram login
- Full analytics
- DM integration
- Comment automation
- Competitor tracking
- Canva-like design editor
- Video editing
- Team collaboration
- Complex calendar scheduling
- Payment links
- CRM
- Social listening
- Hashtag performance tracking

## 14. MVP Definition

## 14.1 MVP Goal

Build a mobile app that helps small creators and businesses create a personalized Instagram content strategy and generate ready-to-use Instagram content.

## 14.2 MVP Includes

1. Brand onboarding
2. AI Brand Profile
3. Weekly Instagram content plan
4. Content idea generator
5. Reel script generator
6. Caption generator
7. Basic profile audit
8. Saved content library
9. Freemium usage limits
10. Pro subscription

## 14.3 MVP Excludes

1. Instagram login
2. Auto-posting
3. Analytics
4. DM/comment integration
5. Video editing
6. Design templates

## 15. Future Expansion Ideas

After validating the MVP, the product can expand into:

- Instagram API connection
- Analytics insights
- DM assistant
- Comment assistant
- Competitor analysis
- Visual template generation
- Scheduled publishing
- Multi-account support
- Team workspace
- AI brand strategist chat
- Content performance learning loop
- CRM for Instagram leads
- Offer and campaign planning

## 16. Summary

The best MVP is not a full Instagram management platform. It should be a focused AI coach that helps users answer one painful question:

> What should I post next, and how should I say it?

The MVP should include personalized onboarding, Brand Profile memory, weekly content plans, content ideas, Reel scripts, captions, profile audit, and a saved content library.

The product should avoid heavy Instagram API integrations in the first version. This keeps the MVP realistic, faster to build, and easier to validate.
