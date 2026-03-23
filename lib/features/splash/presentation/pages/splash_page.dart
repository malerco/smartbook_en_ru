import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartbook_en_ru/core/constants/image_constants.dart';
import 'package:smartbook_en_ru/core/theme/theme.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/router/app_router.dart';
import '../bloc/splash_bloc.dart';
import '../widgets/loading_indicator.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state is SplashLoaded) {
          context.go(AppRoutes.main);
        }
      },
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(ImageConstants.splashImage, fit: BoxFit.fill,),
            SafeArea(
              child: Column(
                children: [
                  const Spacer(flex: 3),
                  _buildTitle(context),
                  const Spacer(flex: 2),
                  _buildLoadingSection(context),
                  const SizedBox(height: 48),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    final appLocale = AppLocalizations.of(context)!;
    final colors = context.colors;
    return Column(
      children: [
        Text(
          appLocale.appTitle,
          style: GoogleFonts.playfairDisplay(
            fontSize: 42,
            fontWeight: FontWeight.bold,
            color: colors.white,
            fontStyle: FontStyle.italic,
            shadows: [
              Shadow(
                color: Colors.black.withOpacity(0.3),
                offset: const Offset(2, 2),
                blurRadius: 4,
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        Text(
          appLocale.appSubtitle,
          style: GoogleFonts.lato(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: colors.white,
            letterSpacing: 1.2,
            shadows: [
              Shadow(
                color: Colors.black.withOpacity(0.3),
                offset: const Offset(2, 2),
                blurRadius: 4,
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildLoadingSection(BuildContext context) {
    final colors = context.colors;
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        if (state is SplashLoading) {
          return LoadingIndicator(
            progress: state.progress,
            messageType: state.messageType,
          );
        } else if (state is SplashError) {
          return Column(
            children: [
              const Icon(
                Icons.error_outline,
                color: Color(0xFFCF6679),
                size: 48,
              ),
              const SizedBox(height: 16),
              Text(
                state.errorKey,
                style: TextStyle(color: colors.white, shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: const Offset(2, 2),
                    blurRadius: 4,
                  ),
                ],),
                textAlign: TextAlign.center,
              ),
            ],
          );
        }
        return const SizedBox(height: 72,);
      },
    );
  }
}
