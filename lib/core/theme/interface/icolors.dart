// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

abstract interface class IColors {
  final Color brandPrimary;
  final Color brandSecondary;

  final Color surfaceBackground;
  final Color surfaceLayout;
  final Color surfaceMuted;
  final Color surfaceDisabled;

  final Color textPrimary;
  final Color textSecondary;
  final Color textDisabled;
  final Color textOnColor;

  final Color borderLayout;
  final Color borderElements;
  final Color borderActive;

  final Color iconPrimary;
  final Color iconSecondary;
  final Color iconDisabled;
  final Color iconOnColor;

  final Color interactiveDefaultPrimary;
  final Color interactiveDefaultSecondary;
  final Color interactiveDefaultDepressed;

  final Color interactiveCriticalPrimary;
  final Color interactiveCriticalSecondary;
  final Color interactiveCriticalDepressed;

  final Color feedbackWarningPrimary;
  final Color feedbackWarningSecondary;

  final Color feedbackSuccessPrimary;
  final Color feedbackSuccessSecondary;

  final Color feedbackInformativePrimary;
  final Color feedbackInformativeSecondary;
  final Color surfaceHighlight;

  IColors({
    required this.brandPrimary,
    required this.brandSecondary,
    required this.surfaceBackground,
    required this.surfaceLayout,
    required this.surfaceMuted,
    required this.surfaceDisabled,
    required this.textPrimary,
    required this.textSecondary,
    required this.textDisabled,
    required this.textOnColor,
    required this.borderLayout,
    required this.borderElements,
    required this.borderActive,
    required this.iconPrimary,
    required this.iconSecondary,
    required this.iconDisabled,
    required this.iconOnColor,
    required this.interactiveDefaultPrimary,
    required this.interactiveDefaultSecondary,
    required this.interactiveDefaultDepressed,
    required this.interactiveCriticalPrimary,
    required this.interactiveCriticalSecondary,
    required this.interactiveCriticalDepressed,
    required this.feedbackWarningPrimary,
    required this.feedbackWarningSecondary,
    required this.feedbackSuccessPrimary,
    required this.feedbackSuccessSecondary,
    required this.feedbackInformativePrimary,
    required this.feedbackInformativeSecondary,
    required this.surfaceHighlight,
  });
}
