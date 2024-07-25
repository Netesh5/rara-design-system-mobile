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
  final Color interactiveDefaultBackground;
  final Color interactiveDefaultDepressed;

  final Color interactiveCriticalPrimary;
  final Color interactiveCriticalBackground;
  final Color interactiveCriticalDepressed;

  final Color feedbackWarningPrimary;
  final Color feedbackWarningBackground;

  final Color feedbackSuccessPrimary;
  final Color feedbackSuccessBackground;

  final Color feedbackInformativePrimary;
  final Color feedbackInformativeBackground;

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
    required this.interactiveDefaultBackground,
    required this.interactiveDefaultDepressed,
    required this.interactiveCriticalPrimary,
    required this.interactiveCriticalBackground,
    required this.interactiveCriticalDepressed,
    required this.feedbackWarningPrimary,
    required this.feedbackWarningBackground,
    required this.feedbackSuccessPrimary,
    required this.feedbackSuccessBackground,
    required this.feedbackInformativePrimary,
    required this.feedbackInformativeBackground,
  });
}
