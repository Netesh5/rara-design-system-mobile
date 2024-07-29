// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:rara_design_system/core/theme/interface/icolors.dart';

class LightColors implements IColors {
  final Color? borderActiveOverride;
  final Color? borderElementsOverride;
  final Color? borderLayoutOverride;

  final Color? brandPrimaryOverride;
  final Color? brandSecondaryOverride;

  final Color? feedbackInformativeSecondaryOverride;
  final Color? feedbackInformativePrimaryOverride;
  final Color? feedbackSuccessSecondaryOverride;
  final Color? feedbackSuccessPrimaryOverride;
  final Color? feedbackWarningSecondaryOverride;
  final Color? feedbackWarningPrimaryOverride;

  final Color? iconDisabledOverride;
  final Color? iconOnColorOverride;
  final Color? iconPrimaryOverride;
  final Color? iconSecondaryOverride;

  final Color? interactiveCriticalSecondaryOverride;
  final Color? interactiveCriticalDepressedOverride;
  final Color? interactiveCriticalPrimaryOverride;
  final Color? interactiveDefaultSecondaryOverride;
  final Color? interactiveDefaultDepressedOverride;
  final Color? interactiveDefaultPrimaryOverride;

  final Color? surfaceBackgroundOverride;
  final Color? surfaceDisabledOverride;
  final Color? surfaceLayoutOverride;
  final Color? surfaceMutedOverride;
  final Color? surfaceHighlightOverride;

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
    this.feedbackInformativeSecondaryOverride,
    this.feedbackInformativePrimaryOverride,
    this.feedbackSuccessSecondaryOverride,
    this.feedbackSuccessPrimaryOverride,
    this.feedbackWarningSecondaryOverride,
    this.feedbackWarningPrimaryOverride,
    this.iconDisabledOverride,
    this.iconOnColorOverride,
    this.iconPrimaryOverride,
    this.iconSecondaryOverride,
    this.interactiveCriticalSecondaryOverride,
    this.interactiveCriticalDepressedOverride,
    this.interactiveCriticalPrimaryOverride,
    this.interactiveDefaultSecondaryOverride,
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
    this.surfaceHighlightOverride,
  });

  @override
  Color get borderActive => borderActiveOverride ?? const Color(0xff004b8d);

  @override
  Color get borderElements => borderElementsOverride ?? const Color(0xffAAAAAA);

  @override
  Color get borderLayout => borderLayoutOverride ?? const Color(0xffDDDDDD);

  @override
  Color get brandPrimary => brandPrimaryOverride ?? const Color(0xff242424);

  @override
  Color get brandSecondary => brandSecondaryOverride ?? const Color(0xff303236);

  @override
  Color get feedbackInformativeSecondary =>
      feedbackInformativeSecondaryOverride ?? const Color(0xffF1F5FD);

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
      feedbackWarningSecondaryOverride ?? const Color(0xffFFF5EA);

  @override
  Color get feedbackWarningPrimary =>
      feedbackWarningPrimaryOverride ?? const Color(0xffFFC453);

  @override
  Color get iconDisabled => iconDisabledOverride ?? const Color(0xff999999);

  @override
  Color get iconOnColor => iconOnColorOverride ?? const Color(0xffFFFFFF);

  @override
  Color get iconPrimary => iconPrimaryOverride ?? const Color(0xff000000);

  @override
  Color get iconSecondary => iconSecondaryOverride ?? const Color(0xff333333);

  @override
  Color get interactiveCriticalSecondary =>
      interactiveCriticalSecondaryOverride ?? const Color(0xffFDEDF0);

  @override
  Color get interactiveCriticalDepressed =>
      interactiveCriticalDepressedOverride ?? const Color(0xffFF0030);

  @override
  Color get interactiveCriticalPrimary =>
      interactiveCriticalPrimaryOverride ?? const Color(0xffDF1C41);

  @override
  Color get interactiveDefaultSecondary =>
      interactiveDefaultSecondaryOverride ?? const Color(0xffEBF7FE);

  @override
  Color get interactiveDefaultDepressed =>
      interactiveDefaultDepressedOverride ?? const Color(0xff003366);

  @override
  Color get interactiveDefaultPrimary =>
      interactiveDefaultPrimaryOverride ?? const Color(0xff5BC0EB);

  @override
  Color get surfaceBackground =>
      surfaceBackgroundOverride ?? const Color(0xffFFFFFF);

  @override
  Color get surfaceDisabled =>
      surfaceDisabledOverride ?? const Color(0xffEDEDED);

  @override
  Color get surfaceLayout => surfaceLayoutOverride ?? const Color(0xffF7F7F7);

  @override
  Color get surfaceMuted => surfaceMutedOverride ?? const Color(0xffE0E0E0);

  @override
  Color get surfaceHighlight =>
      surfaceHighlightOverride ?? const Color(0xffF2F2F2);

  @override
  Color get textDisabled => textDisabledOverride ?? const Color(0xff8F8F8F);

  @override
  Color get textOnColor => textOnColorOverride ?? const Color(0xffFFFFFF);

  @override
  Color get textPrimary => textPrimaryOverride ?? const Color(0xff000000);

  @override
  Color get textSecondary => textSecondaryOverride ?? const Color(0xff333333);

  LightColors copyWith({
    Color? borderActiveOverride,
    Color? borderElementsOverride,
    Color? borderLayoutOverride,
    Color? brandPrimaryOverride,
    Color? brandSecondaryOverride,
    Color? feedbackInformativeSecondaryOverride,
    Color? feedbackInformativePrimaryOverride,
    Color? feedbackSuccessSecondaryOverride,
    Color? feedbackSuccessPrimaryOverride,
    Color? feedbackWarningSecondaryOverride,
    Color? feedbackWarningPrimaryOverride,
    Color? iconDisabledOverride,
    Color? iconOnColorOverride,
    Color? iconPrimaryOverride,
    Color? iconSecondaryOverride,
    Color? interactiveCriticalSecondaryOverride,
    Color? interactiveCriticalDepressedOverride,
    Color? interactiveCriticalPrimaryOverride,
    Color? interactiveDefaultSecondaryOverride,
    Color? interactiveDefaultDepressedOverride,
    Color? interactiveDefaultPrimaryOverride,
    Color? surfaceBackgroundOverride,
    Color? surfaceDisabledOverride,
    Color? surfaceLayoutOverride,
    Color? surfaceMutedOverride,
    Color? surfaceHighlightOverride,
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
      feedbackInformativeSecondaryOverride:
          feedbackInformativeSecondaryOverride ??
              this.feedbackInformativeSecondaryOverride,
      feedbackInformativePrimaryOverride: feedbackInformativePrimaryOverride ??
          this.feedbackInformativePrimaryOverride,
      feedbackSuccessSecondaryOverride: feedbackSuccessSecondaryOverride ??
          this.feedbackSuccessSecondaryOverride,
      feedbackSuccessPrimaryOverride:
          feedbackSuccessPrimaryOverride ?? this.feedbackSuccessPrimaryOverride,
      feedbackWarningSecondaryOverride: feedbackWarningSecondaryOverride ??
          this.feedbackWarningSecondaryOverride,
      feedbackWarningPrimaryOverride:
          feedbackWarningPrimaryOverride ?? this.feedbackWarningPrimaryOverride,
      iconDisabledOverride: iconDisabledOverride ?? this.iconDisabledOverride,
      iconOnColorOverride: iconOnColorOverride ?? this.iconOnColorOverride,
      iconPrimaryOverride: iconPrimaryOverride ?? this.iconPrimaryOverride,
      iconSecondaryOverride:
          iconSecondaryOverride ?? this.iconSecondaryOverride,
      interactiveCriticalSecondaryOverride:
          interactiveCriticalSecondaryOverride ??
              this.interactiveCriticalSecondaryOverride,
      interactiveCriticalDepressedOverride:
          interactiveCriticalDepressedOverride ??
              this.interactiveCriticalDepressedOverride,
      interactiveCriticalPrimaryOverride: interactiveCriticalPrimaryOverride ??
          this.interactiveCriticalPrimaryOverride,
      interactiveDefaultSecondaryOverride:
          interactiveDefaultSecondaryOverride ??
              this.interactiveDefaultSecondaryOverride,
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
      surfaceHighlightOverride:
          surfaceHighlightOverride ?? this.surfaceHighlightOverride,
      textDisabledOverride: textDisabledOverride ?? this.textDisabledOverride,
      textOnColorOverride: textOnColorOverride ?? this.textOnColorOverride,
      textPrimaryOverride: textPrimaryOverride ?? this.textPrimaryOverride,
      textSecondaryOverride:
          textSecondaryOverride ?? this.textSecondaryOverride,
    );
  }
}
