// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:rara_design_system/core/theme/interface/icolors.dart';

class DarkColors implements IColors {
  final Color? brandPrimaryOverride;
  final Color? brandSecondaryOverride;

  final Color? surfaceBackgroundOverride;
  final Color? surfaceLayoutOverride;
  final Color? surfaceMutedOverride;
  final Color? surfaceDisabledOverride;
  final Color? sufaceHighlightOverride;

  final Color? textPrimaryOverride;
  final Color? textSecondaryOverride;
  final Color? textDisabledOverride;
  final Color? textOnColorOverride;

  final Color? borderLayoutOverride;
  final Color? borderElementsOverride;
  final Color? borderActiveOverride;

  final Color? iconPrimaryOverride;
  final Color? iconSecondaryOverride;
  final Color? iconDisabledOverride;
  final Color? iconOnColorOverride;

  final Color? interactiveDefaultPrimaryOverride;
  final Color? interactiveDefaultBackgroundOverride;
  final Color? interactiveDefaultDepressedOverride;

  final Color? interactiveCriticalPrimaryOverride;
  final Color? interactiveCriticalBackgroundOverride;
  final Color? interactiveCriticalDepressedOverride;

  final Color? feedbackWarningPrimaryOverride;
  final Color? feedbackWarningBackgroundOverride;

  final Color? feedbackSuccessPrimaryOverride;
  final Color? feedbackSuccessSecondaryOverride;

  final Color? feedbackInformativePrimaryOverride;
  final Color? feedbackInformativeBackgroundOverride;

  DarkColors({
    this.brandPrimaryOverride,
    this.brandSecondaryOverride,
    this.surfaceBackgroundOverride,
    this.surfaceLayoutOverride,
    this.surfaceMutedOverride,
    this.surfaceDisabledOverride,
    this.textPrimaryOverride,
    this.textSecondaryOverride,
    this.textDisabledOverride,
    this.textOnColorOverride,
    this.borderLayoutOverride,
    this.borderElementsOverride,
    this.borderActiveOverride,
    this.iconPrimaryOverride,
    this.iconSecondaryOverride,
    this.iconDisabledOverride,
    this.iconOnColorOverride,
    this.interactiveDefaultPrimaryOverride,
    this.interactiveDefaultBackgroundOverride,
    this.interactiveDefaultDepressedOverride,
    this.interactiveCriticalPrimaryOverride,
    this.interactiveCriticalBackgroundOverride,
    this.interactiveCriticalDepressedOverride,
    this.feedbackWarningPrimaryOverride,
    this.feedbackWarningBackgroundOverride,
    this.feedbackSuccessPrimaryOverride,
    this.feedbackSuccessSecondaryOverride,
    this.feedbackInformativePrimaryOverride,
    this.feedbackInformativeBackgroundOverride,
    this.sufaceHighlightOverride,
  });

  @override
  Color get borderActive => borderActiveOverride ?? const Color(0xff4FC3F7);

  @override
  Color get borderElements => borderElementsOverride ?? const Color(0xff666666);

  @override
  Color get borderLayout => borderLayoutOverride ?? const Color(0xff757575);

  @override
  Color get brandPrimary => brandPrimaryOverride ?? const Color(0xffFF0000);

  @override
  Color get brandSecondary => brandSecondaryOverride ?? const Color(0xff154096);

  @override
  Color get feedbackInformativeSecondary =>
      feedbackInformativeBackgroundOverride ?? const Color(0xffF1F5FD);

  @override
  Color get feedbackInformativePrimary =>
      feedbackInformativePrimaryOverride ?? const Color(0xff143E9F);

  @override
  Color get feedbackSuccessSecondary =>
      feedbackSuccessSecondaryOverride ?? const Color(0xffECFDF3);

  @override
  Color get feedbackSuccessPrimary =>
      feedbackSuccessPrimaryOverride ?? const Color(0xff008060);

  @override
  Color get feedbackWarningSecondary =>
      feedbackWarningBackgroundOverride ?? const Color(0xffFFF5EA);

  @override
  Color get feedbackWarningPrimary =>
      feedbackWarningPrimaryOverride ?? const Color(0xffFFC453);

  @override
  Color get iconDisabled => iconDisabledOverride ?? const Color(0xffAAAAAA);

  @override
  Color get iconOnColor => iconOnColorOverride ?? const Color(0xffFFFFFF);

  @override
  Color get iconPrimary => iconPrimaryOverride ?? const Color(0xffFFFFFF);

  @override
  Color get iconSecondary => iconSecondaryOverride ?? const Color(0xffCCCCCC);

  @override
  Color get interactiveCriticalSecondary =>
      interactiveCriticalBackgroundOverride ?? const Color(0xff4A4A4A);

  @override
  Color get interactiveCriticalDepressed =>
      interactiveCriticalDepressedOverride ?? const Color(0xffB20000);

  @override
  Color get interactiveCriticalPrimary =>
      interactiveCriticalPrimaryOverride ?? const Color(0xffDF1C41);

  @override
  Color get interactiveDefaultSecondary =>
      interactiveDefaultBackgroundOverride ?? const Color(0xffFDEDF0);

  @override
  Color get interactiveDefaultDepressed =>
      interactiveDefaultDepressedOverride ?? const Color(0xffFF0030);

  @override
  Color get interactiveDefaultPrimary =>
      interactiveDefaultPrimaryOverride ?? const Color(0xff03A9F4);

  @override
  Color get surfaceBackground =>
      surfaceBackgroundOverride ?? const Color(0xff121212);

  @override
  Color get surfaceDisabled =>
      surfaceDisabledOverride ?? const Color(0xff757575);

  @override
  Color get surfaceLayout => surfaceLayoutOverride ?? const Color(0xff212121);

  @override
  Color get surfaceMuted => surfaceMutedOverride ?? const Color(0xff333333);

  @override
  Color get surfaceHighlight => surfaceMutedOverride ?? const Color(0xff1E1E1E);

  @override
  Color get textDisabled => textDisabledOverride ?? const Color(0xffAAAAAA);

  @override
  Color get textOnColor => textOnColorOverride ?? const Color(0xffFFFFFF);

  @override
  Color get textPrimary => textPrimaryOverride ?? const Color(0xffFFFFFF);

  @override
  Color get textSecondary => textSecondaryOverride ?? const Color(0xffCCCCCC);

  DarkColors copyWith({
    Color? brandPrimaryOverride,
    Color? brandSecondaryOverride,
    Color? surfaceBackgroundOverride,
    Color? surfaceLayoutOverride,
    Color? surfaceMutedOverride,
    Color? surfaceDisabledOverride,
    Color? textPrimaryOverride,
    Color? textSecondaryOverride,
    Color? textDisabledOverride,
    Color? textOnColorOverride,
    Color? borderLayoutOverride,
    Color? borderElementsOverride,
    Color? borderActiveOverride,
    Color? iconPrimaryOverride,
    Color? iconSecondaryOverride,
    Color? iconDisabledOverride,
    Color? iconOnColorOverride,
    Color? interactiveDefaultPrimaryOverride,
    Color? interactiveDefaultBackgroundOverride,
    Color? interactiveDefaultDepressedOverride,
    Color? interactiveCriticalPrimaryOverride,
    Color? interactiveCriticalBackgroundOverride,
    Color? interactiveCriticalDepressedOverride,
    Color? feedbackWarningPrimaryOverride,
    Color? feedbackWarningBackgroundOverride,
    Color? feedbackSuccessPrimaryOverride,
    Color? feedbackSuccessBackgroundOverride,
    Color? feedbackInformativePrimaryOverride,
    Color? feedbackInformativeBackgroundOverride,
    Color? sufaceHighlightOverride,
  }) {
    return DarkColors(
      brandPrimaryOverride: brandPrimaryOverride ?? this.brandPrimaryOverride,
      brandSecondaryOverride:
          brandSecondaryOverride ?? this.brandSecondaryOverride,
      surfaceBackgroundOverride:
          surfaceBackgroundOverride ?? this.surfaceBackgroundOverride,
      surfaceLayoutOverride:
          surfaceLayoutOverride ?? this.surfaceLayoutOverride,
      surfaceMutedOverride: surfaceMutedOverride ?? this.surfaceMutedOverride,
      surfaceDisabledOverride:
          surfaceDisabledOverride ?? this.surfaceDisabledOverride,
      textPrimaryOverride: textPrimaryOverride ?? this.textPrimaryOverride,
      textSecondaryOverride:
          textSecondaryOverride ?? this.textSecondaryOverride,
      textDisabledOverride: textDisabledOverride ?? this.textDisabledOverride,
      textOnColorOverride: textOnColorOverride ?? this.textOnColorOverride,
      borderLayoutOverride: borderLayoutOverride ?? this.borderLayoutOverride,
      borderElementsOverride:
          borderElementsOverride ?? this.borderElementsOverride,
      borderActiveOverride: borderActiveOverride ?? this.borderActiveOverride,
      iconPrimaryOverride: iconPrimaryOverride ?? this.iconPrimaryOverride,
      iconSecondaryOverride:
          iconSecondaryOverride ?? this.iconSecondaryOverride,
      iconDisabledOverride: iconDisabledOverride ?? this.iconDisabledOverride,
      iconOnColorOverride: iconOnColorOverride ?? this.iconOnColorOverride,
      interactiveDefaultPrimaryOverride: interactiveDefaultPrimaryOverride ??
          this.interactiveDefaultPrimaryOverride,
      interactiveDefaultBackgroundOverride:
          interactiveDefaultBackgroundOverride ??
              this.interactiveDefaultBackgroundOverride,
      interactiveDefaultDepressedOverride:
          interactiveDefaultDepressedOverride ??
              this.interactiveDefaultDepressedOverride,
      interactiveCriticalPrimaryOverride: interactiveCriticalPrimaryOverride ??
          this.interactiveCriticalPrimaryOverride,
      interactiveCriticalBackgroundOverride:
          interactiveCriticalBackgroundOverride ??
              this.interactiveCriticalBackgroundOverride,
      interactiveCriticalDepressedOverride:
          interactiveCriticalDepressedOverride ??
              this.interactiveCriticalDepressedOverride,
      feedbackWarningPrimaryOverride:
          feedbackWarningPrimaryOverride ?? this.feedbackWarningPrimaryOverride,
      feedbackWarningBackgroundOverride: feedbackWarningBackgroundOverride ??
          this.feedbackWarningBackgroundOverride,
      feedbackSuccessPrimaryOverride:
          feedbackSuccessPrimaryOverride ?? this.feedbackSuccessPrimaryOverride,
      feedbackSuccessSecondaryOverride:
          feedbackSuccessBackgroundOverride ?? feedbackSuccessSecondaryOverride,
      feedbackInformativePrimaryOverride: feedbackInformativePrimaryOverride ??
          this.feedbackInformativePrimaryOverride,
      feedbackInformativeBackgroundOverride:
          feedbackInformativeBackgroundOverride ??
              this.feedbackInformativeBackgroundOverride,
      sufaceHighlightOverride:
          sufaceHighlightOverride ?? this.sufaceHighlightOverride,
    );
  }
}
