import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../bloc/splash_bloc.dart';

class LoadingIndicator extends StatelessWidget {
  final double progress;
  final LoadingMessageType messageType;

  const LoadingIndicator({
    super.key,
    required this.progress,
    required this.messageType,
  });

  static const _textColor = Color(0xFFFFFFFF);
  static const _accentColor = Color(0xFFFFFFFF);

  String _getLocalizedMessage(BuildContext context) {
    final appLocale = AppLocalizations.of(context)!;
    switch (messageType) {
      case LoadingMessageType.initializing:
        return appLocale.initializingTranslator;
      case LoadingMessageType.downloadingModels:
        return appLocale.downloadingModels;
      case LoadingMessageType.loadingNeuralNetwork:
        return appLocale.loadingNeuralNetwork;
      case LoadingMessageType.preparingVocabulary:
        return appLocale.preparingVocabulary;
      case LoadingMessageType.almostReady:
        return appLocale.almostReady;
      case LoadingMessageType.ready:
        return appLocale.ready;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                Container(
                  height: 4,
                  decoration: BoxDecoration(
                    color: _textColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 4,
                  width: MediaQuery.of(context).size.width * 0.7 * progress,
                  decoration: BoxDecoration(
                    color: _accentColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: _accentColor.withOpacity(0.5),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 12,
                height: 12,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    _textColor.withOpacity(0.7),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Flexible(
                child: Text(
                  _getLocalizedMessage(context),
                  style: TextStyle(
                    color: _textColor.withOpacity(0.8),
                    fontSize: 14,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: const Offset(2, 2),
                          blurRadius: 4,
                        ),
                      ]
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )
              .animate()
              .fadeIn(duration: 300.ms),
          const SizedBox(height: 8),
          Text(
            '${(progress * 100).toInt()}%',
            style: TextStyle(
              color: _accentColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: const Offset(2, 2),
                    blurRadius: 4,
                  ),
                ]
            ),
          ),
        ],
      ),
    ).animate().fadeIn(duration: 400.ms).slideY(begin: 0.2, end: 0);
  }
}
