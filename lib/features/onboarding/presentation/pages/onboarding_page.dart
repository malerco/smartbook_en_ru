import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/domain/repositories/settings_repository.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/theme/theme.dart';

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
      _OnboardingSlide(
        icon: Icons.auto_stories_outlined,
        title: appLocale.onboardingWelcomeTitle,
        description: appLocale.onboardingWelcomeDesc,
        colors: colors,
      ),
      _OnboardingSlide(
        icon: Icons.translate_outlined,
        title: appLocale.onboardingTranslationTitle,
        description: appLocale.onboardingTranslationDesc,
        colors: colors,
        animation: _SwipeLeftAnimation(colors: colors),
      ),
      _OnboardingSlide(
        icon: Icons.touch_app_outlined,
        title: appLocale.onboardingWordTitle,
        description: appLocale.onboardingWordDesc,
        colors: colors,
        animation: _TapWordAnimation(colors: colors),
      ),
      _OnboardingSlide(
        icon: Icons.bookmark_add_outlined,
        title: appLocale.onboardingSaveTitle,
        description: appLocale.onboardingSaveDesc,
        colors: colors,
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

class _OnboardingSlide extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final AppColorScheme colors;
  final Widget? animation;

  const _OnboardingSlide({
    required this.icon,
    required this.title,
    required this.description,
    required this.colors,
    this.animation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (animation != null)
            SizedBox(
              height: 200,
              child: animation,
            )
          else
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: colors.primary.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                size: 60,
                color: colors.primary,
              ),
            ),
          const SizedBox(height: 48),
          Text(
            title,
            style: GoogleFonts.playfairDisplay(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: colors.textPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: TextStyle(
              fontSize: 16,
              color: colors.textSecondary,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _SwipeLeftAnimation extends StatefulWidget {
  final AppColorScheme colors;

  const _SwipeLeftAnimation({required this.colors});

  @override
  State<_SwipeLeftAnimation> createState() => _SwipeLeftAnimationState();
}

class _SwipeLeftAnimationState extends State<_SwipeLeftAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    )..repeat();

    _slideAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(-0.3, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.5, curve: Curves.easeInOut),
    ));

    _opacityAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 0.0), weight: 50),
      TweenSequenceItem(tween: Tween(begin: 0.0, end: 1.0), weight: 50),
    ]).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return SlideTransition(
              position: _slideAnimation,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: widget.colors.surface,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The quick brown fox jumps...',
                      style: TextStyle(
                        color: widget.colors.textPrimary,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 8),
                    AnimatedBuilder(
                      animation: _opacityAnimation,
                      builder: (context, child) {
                        return Opacity(
                          opacity: 1 - _opacityAnimation.value,
                          child: Text(
                            'Быстрая коричневая лиса...',
                            style: TextStyle(
                              color: widget.colors.primary,
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        Positioned(
          right: 40,
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              final progress = _controller.value;
              final showHand = progress < 0.5;
              return Opacity(
                opacity: showHand ? 1.0 : 0.0,
                child: Transform.translate(
                  offset: Offset(-50 * progress, 0),
                  child: Icon(
                    Icons.swipe_left,
                    size: 40,
                    color: widget.colors.primary,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _TapWordAnimation extends StatefulWidget {
  final AppColorScheme colors;

  const _TapWordAnimation({required this.colors});

  @override
  State<_TapWordAnimation> createState() => _TapWordAnimationState();
}

class _TapWordAnimationState extends State<_TapWordAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _popupAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2500),
      vsync: this,
    )..repeat();

    _scaleAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 0.95), weight: 10),
      TweenSequenceItem(tween: Tween(begin: 0.95, end: 1.0), weight: 10),
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 1.0), weight: 80),
    ]).animate(_controller);

    _popupAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0.0, end: 0.0), weight: 20),
      TweenSequenceItem(tween: Tween(begin: 0.0, end: 1.0), weight: 15),
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 1.0), weight: 45),
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 0.0), weight: 20),
    ]).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'The ',
                      style: TextStyle(
                        color: widget.colors.textPrimary,
                        fontSize: 18,
                      ),
                    ),
                    Transform.scale(
                      scale: _scaleAnimation.value,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: widget.colors.primary.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          'beautiful',
                          style: TextStyle(
                            color: widget.colors.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      ' sunset',
                      style: TextStyle(
                        color: widget.colors.textPrimary,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Transform.scale(
                  scale: _popupAnimation.value,
                  child: Opacity(
                    opacity: _popupAnimation.value,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: widget.colors.surface,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 12,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'beautiful',
                            style: TextStyle(
                              color: widget.colors.textPrimary,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '[ˈbjuːtɪfl]',
                            style: TextStyle(
                              color: widget.colors.textSecondary,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Wrap(
                            spacing: 8,
                            children: [
                              _chip('красивый', widget.colors),
                              _chip('прекрасный', widget.colors),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _chip(String text, AppColorScheme colors) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: colors.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: colors.primary,
          fontSize: 13,
        ),
      ),
    );
  }
}
