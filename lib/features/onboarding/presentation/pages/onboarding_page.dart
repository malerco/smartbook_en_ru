import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/domain/repositories/settings_repository.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/theme/theme.dart';
import '../widgets/onboarding_slide.dart';
import '../widgets/swipe_left_animation.dart';
import '../widgets/tap_word_animation.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _completeOnboarding() async {
    await getIt<SettingsRepository>().setOnboardingCompleted(true);
    if (mounted) {
      context.go(AppRoutes.main);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final appLocale = AppLocalizations.of(context)!;

    final pages = [
      OnboardingSlide(
        icon: Icons.auto_stories_outlined,
        title: appLocale.onboardingWelcomeTitle,
        description: appLocale.onboardingWelcomeDesc,
      ),
      OnboardingSlide(
        icon: Icons.translate_outlined,
        title: appLocale.onboardingTranslationTitle,
        description: appLocale.onboardingTranslationDesc,
        animation: const SwipeLeftAnimation(),
      ),
      OnboardingSlide(
        icon: Icons.touch_app_outlined,
        title: appLocale.onboardingWordTitle,
        description: appLocale.onboardingWordDesc,
        animation: const TapWordAnimation(),
      ),
      OnboardingSlide(
        icon: Icons.bookmark_add_outlined,
        title: appLocale.onboardingSaveTitle,
        description: appLocale.onboardingSaveDesc,
      ),
    ];

    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: pages.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) => pages[index],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      pages.length,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: _currentPage == index ? 24 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: _currentPage == index
                              ? colors.primary
                              : colors.primary.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    children: [
                      if (_currentPage > 0)
                        TextButton(
                          onPressed: () {
                            _pageController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Text(
                            appLocale.back,
                            style: TextStyle(color: colors.textSecondary),
                          ),
                        )
                      else
                        const SizedBox(width: 80),
                      const Spacer(),
                      _currentPage == pages.length - 1
                          ? ElevatedButton(
                              onPressed: _completeOnboarding,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: colors.primary,
                                foregroundColor: colors.onPrimary,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 32,
                                  vertical: 16,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                appLocale.getStarted,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          : ElevatedButton(
                              onPressed: () {
                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: colors.primary,
                                foregroundColor: colors.onPrimary,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 32,
                                  vertical: 16,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                appLocale.next,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  if (_currentPage < pages.length - 1)
                    TextButton(
                      onPressed: _completeOnboarding,
                      child: Text(
                        appLocale.skip,
                        style: TextStyle(
                          color: colors.textSecondary,
                          fontSize: 14,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
