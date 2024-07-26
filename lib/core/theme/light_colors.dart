// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:rara_design_system/core/theme/interface/icolors.dart';

class LightColors implements IColors {
  final Color? borderActiveOverride;
  final Color? borderElementsOverride;
  final Color? borderLayoutOverride;

  final Color? brandPrimaryOverride;
  final Color? brandSecondaryOverride;

  final Color? feedbackInformativeBackgroundOverride;
  final Color? feedbackInformativePrimaryOverride;
  final Color? feedbackSuccessBackgroundOverride;
  final Color? feedbackSuccessPrimaryOverride;
  final Color? feedbackWarningBackgroundOverride;
  final Color? feedbackWarningPrimaryOverride;

  final Color? iconDisabledOverride;
  final Color? iconOnColorOverride;
  final Color? iconPrimaryOverride;
  final Color? iconSecondaryOverride;

  final Color? interactiveCriticalBackgroundOverride;
  final Color? interactiveCriticalDepressedOverride;
  final Color? interactiveCriticalPrimaryOverride;
  final Color? interactiveDefaultBackgroundOverride;
  final Color? interactiveDefaultDepressedOverride;
  final Color? interactiveDefaultPrimaryOverride;

  final Color? surfaceBackgroundOverride;
  final Color? surfaceDisabledOverride;
  final Color? surfaceLayoutOverride;
  final Color? surfaceMutedOverride;

  final Color? textDisabledOverride;
  final Color? textOnColorOverride;
  final Color? textPrimaryOverride;
  final Color? textSecondaryOverride;

  LightColors({
    this.borderActiveOverride,
    this.borderElementsOverride,
    this.borderLayoutOverride,
    this.brandPrimaryOverride,
    this.brandSecondaryOverride,
    this.feedbackInformativeBackgroundOverride,
    this.feedbackInformativePrimaryOverride,
    this.feedbackSuccessBackgroundOverride,
    this.feedbackSuccessPrimaryOverride,
    this.feedbackWarningBackgroundOverride,
    this.feedbackWarningPrimaryOverride,
    this.iconDisabledOverride,
    this.iconOnColorOverride,
    this.iconPrimaryOverride,
    this.iconSecondaryOverride,
    this.interactiveCriticalBackgroundOverride,
    this.interactiveCriticalDepressedOverride,
    this.interactiveCriticalPrimaryOverride,
    this.interactiveDefaultBackgroundOverride,
    this.interactiveDefaultDepressedOverride,
    this.interactiveDefaultPrimaryOverride,
    this.surfaceBackgroundOverride,
    this.surfaceDisabledOverride,
    this.surfaceLayoutOverride,
    this.surfaceMutedOverride,
    this.textDisabledOverride,
    this.textOnColorOverride,
    this.textPrimaryOverride,
    this.textSecondaryOverride,
  });

  @override
  Color get borderActive => borderActiveOverride ?? const Color(0x0ff15409);

  @override
  Color get borderElements => borderElementsOverride ?? const Color(0xffFF0000);

  @override
  Color get borderLayout => borderLayoutOverride ?? const Color(0xff121212);

  @override
  Color get brandPrimary => brandPrimaryOverride ?? const Color(0xff242424);

  @override
  Color get brandSecondary => brandSecondaryOverride ?? const Color(0xff303236);

  @override
  Color get feedbackInformativeBackground =>
      feedbackInformativeBackgroundOverride ?? const Color(0xff60646C);

  @override
  Color get feedbackInformativePrimary =>
      feedbackInformativePrimaryOverride ?? const Color(0xffFDFDFD);

  @override
  Color get feedbackSuccessBackground =>
      feedbackSuccessBackgroundOverride ?? const Color(0xffA4A4A4);

  @override
  Color get feedbackSuccessPrimary =>
      feedbackSuccessPrimaryOverride ?? const Color(0xffE0E0E0);

  @override
  Color get feedbackWarningBackground =>
      feedbackWarningBackgroundOverride ?? const Color(0xffFFFFFF);

  @override
  Color get feedbackWarningPrimary =>
      feedbackWarningPrimaryOverride ?? const Color(0xff333333);

  @override
  Color get iconDisabled => iconDisabledOverride ?? const Color(0xff5C5C5C);

  @override
  Color get iconOnColor => iconOnColorOverride ?? const Color(0xffFF0000);

  @override
  Color get iconPrimary => iconPrimaryOverride ?? const Color(0xffEEEEEE);

  @override
  Color get iconSecondary => iconSecondaryOverride ?? const Color(0xffE0E0E0);

  @override
  Color get interactiveCriticalBackground =>
      interactiveCriticalBackgroundOverride ?? const Color(0xffE0E0E0);

  @override
  Color get interactiveCriticalDepressed =>
      interactiveCriticalDepressedOverride ?? const Color(0xffFFFFFF);

  @override
  Color get interactiveCriticalPrimary =>
      interactiveCriticalPrimaryOverride ?? const Color(0xff666666);

  @override
  Color get interactiveDefaultBackground =>
      interactiveDefaultBackgroundOverride ?? const Color(0xffE0E0E0);

  @override
  Color get interactiveDefaultDepressed =>
      interactiveDefaultDepressedOverride ?? const Color(0xffFFFFFF);

  @override
  Color get interactiveDefaultPrimary =>
      interactiveDefaultPrimaryOverride ?? const Color(0xffFF0000);

  @override
  Color get surfaceBackground =>
      surfaceBackgroundOverride ?? const Color(0xff4A4A4A);

  @override
  Color get surfaceDisabled =>
      surfaceDisabledOverride ?? const Color(0xffB20000);

  @override
  Color get surfaceLayout => surfaceLayoutOverride ?? const Color(0xffF2B045);

  @override
  Color get surfaceMuted => surfaceMutedOverride ?? const Color(0xffFDF3E2);

  @override
  Color get textDisabled => textDisabledOverride ?? const Color(0xff35C03C);

  @override
  Color get textOnColor => textOnColorOverride ?? const Color(0xffD7F4D8);

  @override
  Color get textPrimary => textPrimaryOverride ?? const Color(0xff121212);

  @override
  Color get textSecondary => textSecondaryOverride ?? const Color(0xffDCEBF9);

  LightColors copyWith({
    Color? borderActiveOverride,
    Color? borderElementsOverride,
    Color? borderLayoutOverride,
    Color? brandPrimaryOverride,
    Color? brandSecondaryOverride,
    Color? feedbackInformativeBackgroundOverride,
    Color? feedbackInformativePrimaryOverride,
    Color? feedbackSuccessBackgroundOverride,
    Color? feedbackSuccessPrimaryOverride,
    Color? feedbackWarningBackgroundOverride,
    Color? feedbackWarningPrimaryOverride,
    Color? iconDisabledOverride,
    Color? iconOnColorOverride,
    Color? iconPrimaryOverride,
    Color? iconSecondaryOverride,
    Color? interactiveCriticalBackgroundOverride,
    Color? interactiveCriticalDepressedOverride,
    Color? interactiveCriticalPrimaryOverride,
    Color? interactiveDefaultBackgroundOverride,
    Color? interactiveDefaultDepressedOverride,
    Color? interactiveDefaultPrimaryOverride,
    Color? surfaceBackgroundOverride,
    Color? surfaceDisabledOverride,
    Color? surfaceLayoutOverride,
    Color? surfaceMutedOverride,
    Color? textDisabledOverride,
    Color? textOnColorOverride,
    Color? textPrimaryOverride,
    Color? textSecondaryOverride,
  }) {
    return LightColors(
      borderActiveOverride: borderActiveOverride ?? this.borderActiveOverride,
      borderElementsOverride:
          borderElementsOverride ?? this.borderElementsOverride,
      borderLayoutOverride: borderLayoutOverride ?? this.borderLayoutOverride,
      brandPrimaryOverride: brandPrimaryOverride ?? this.brandPrimaryOverride,
      brandSecondaryOverride:
          brandSecondaryOverride ?? this.brandSecondaryOverride,
      feedbackInformativeBackgroundOverride:
          feedbackInformativeBackgroundOverride ??
              this.feedbackInformativeBackgroundOverride,
      feedbackInformativePrimaryOverride: feedbackInformativePrimaryOverride ??
          this.feedbackInformativePrimaryOverride,
      feedbackSuccessBackgroundOverride: feedbackSuccessBackgroundOverride ??
          this.feedbackSuccessBackgroundOverride,
      feedbackSuccessPrimaryOverride:
          feedbackSuccessPrimaryOverride ?? this.feedbackSuccessPrimaryOverride,
      feedbackWarningBackgroundOverride: feedbackWarningBackgroundOverride ??
          this.feedbackWarningBackgroundOverride,
      feedbackWarningPrimaryOverride:
          feedbackWarningPrimaryOverride ?? this.feedbackWarningPrimaryOverride,
      iconDisabledOverride: iconDisabledOverride ?? this.iconDisabledOverride,
      iconOnColorOverride: iconOnColorOverride ?? this.iconOnColorOverride,
      iconPrimaryOverride: iconPrimaryOverride ?? this.iconPrimaryOverride,
      iconSecondaryOverride:
          iconSecondaryOverride ?? this.iconSecondaryOverride,
      interactiveCriticalBackgroundOverride:
          interactiveCriticalBackgroundOverride ??
              this.interactiveCriticalBackgroundOverride,
      interactiveCriticalDepressedOverride:
          interactiveCriticalDepressedOverride ??
              this.interactiveCriticalDepressedOverride,
      interactiveCriticalPrimaryOverride: interactiveCriticalPrimaryOverride ??
          this.interactiveCriticalPrimaryOverride,
      interactiveDefaultBackgroundOverride:
          interactiveDefaultBackgroundOverride ??
              this.interactiveDefaultBackgroundOverride,
      interactiveDefaultDepressedOverride:
          interactiveDefaultDepressedOverride ??
              this.interactiveDefaultDepressedOverride,
      interactiveDefaultPrimaryOverride: interactiveDefaultPrimaryOverride ??
          this.interactiveDefaultPrimaryOverride,
      surfaceBackgroundOverride:
          surfaceBackgroundOverride ?? this.surfaceBackgroundOverride,
      surfaceDisabledOverride:
          surfaceDisabledOverride ?? this.surfaceDisabledOverride,
      surfaceLayoutOverride:
          surfaceLayoutOverride ?? this.surfaceLayoutOverride,
      surfaceMutedOverride: surfaceMutedOverride ?? this.surfaceMutedOverride,
      textDisabledOverride: textDisabledOverride ?? this.textDisabledOverride,
      textOnColorOverride: textOnColorOverride ?? this.textOnColorOverride,
      textPrimaryOverride: textPrimaryOverride ?? this.textPrimaryOverride,
      textSecondaryOverride:
          textSecondaryOverride ?? this.textSecondaryOverride,
    );
  }
}
