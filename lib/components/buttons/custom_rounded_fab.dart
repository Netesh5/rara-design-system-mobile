import 'package:flutter/material.dart';
import 'package:rara_design_system/core/animations/tap_effect.dart';
import 'package:rara_design_system/core/enums/buttons/button_state_enum.dart';
import 'package:rara_design_system/core/enums/buttons/button_varient_enum.dart';
import 'package:rara_design_system/core/enums/buttons/buttons_size_enum.dart';
import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/theme/interface/itheme.dart';
import 'package:rara_design_system/core/utils/size_utils.dart';

class CustomFAButton extends StatelessWidget {
  final IconData? prefixIcon;
  final Color? prefixColor;
  final IconData? centerIcon;
  final Color? centerColor;
  final IconData? suffixIcon;
  final Color? suffixColor;
  final String? title;
  final TextStyle? titleStyle;
  final Color? fillColor;
  final VoidCallback? onPressed;
  final EdgeInsets? containerMargin;
  final EdgeInsets? containerPadding;
  final bool showShadow;
  final double iconSize;
  final bool disabled;
  final bool enableTapEffect;
  final double height;
  final double width;
  final Color? backgroundColor;
  final FAButtonSize? buttonSize;
  final ButtonState? buttonState;
  final double borderRadius;
  final ButtonVarient? buttonVarient;
  final Color? borderColor;

  final int? flex;
  const CustomFAButton({
    super.key,
    this.title,
    this.titleStyle,
    this.fillColor,
    this.prefixIcon,
    this.prefixColor,
    this.centerIcon,
    this.centerColor,
    this.suffixIcon,
    this.suffixColor,
    this.onPressed,
    this.containerMargin,
    this.containerPadding,
    this.flex = 1,
    this.showShadow = true,
    this.iconSize = 20,
    this.disabled = false,
    this.enableTapEffect = true,
    this.height = 72,
    this.width = 72,
    this.backgroundColor,
    this.buttonSize,
    this.buttonState,
    this.borderRadius = 12,
    this.buttonVarient,
    this.borderColor,
  });

  double iconSizeValue(FAButtonSize buttonSize) {
    switch (buttonSize) {
      case FAButtonSize.large:
        return 32;
      case FAButtonSize.medium:
        return 24;
      case FAButtonSize.small:
        return 16;
      case FAButtonSize.custom:
        return 50;
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = rg<ITheme>().colors(context);

    return TapEffect(
      enableTapEffect: enableTapEffect,
      scaleDown: 0.90,
      child: Container(
        height: buttonSize?.height ?? height,
        width: buttonSize?.width ?? width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: buttonVarient == ButtonVarient.outline
              ? Border.all(
                  color: borderColor ??
                      buttonState?.color ??
                      colors.interactiveDefaultPrimary,
                )
              : null,
          color: buttonVarient == ButtonVarient.filled
              ? buttonState?.color ??
                  (fillColor ?? colors.interactiveDefaultPrimary)
              : null,
        ),
        child: AbsorbPointer(
          absorbing: disabled,
          child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(4),
            child: Container(
              padding: containerPadding ?? const EdgeInsets.all(4),
              alignment: Alignment.center,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (prefixIcon != null)
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(right: 10.wp),
                      child: Icon(
                        prefixIcon,
                        size: iconSize,
                        color: disabled
                            ? colors.iconDisabled
                            : suffixColor ??
                                (buttonVarient != ButtonVarient.filled
                                    ? buttonState?.color
                                    : colors.iconOnColor),
                      ),
                    ),
                  if (centerIcon != null)
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        child: Icon(
                          centerIcon,
                          size:
                              iconSizeValue(buttonSize ?? FAButtonSize.medium),
                          color: disabled
                              ? colors.iconDisabled
                              : suffixColor ??
                                  (buttonVarient != ButtonVarient.filled
                                      ? buttonState?.color
                                      : colors.iconOnColor),
                        ),
                      ),
                    ),
                  title != null
                      ? Text(
                          title ?? "",
                          style: (titleStyle ??
                                  TextStyle(
                                    fontSize: 14.wp,
                                    color: disabled
                                        ? colors.textDisabled
                                        : buttonVarient != ButtonVarient.filled
                                            ? buttonState?.color
                                            : colors.textOnColor,
                                  ))
                              .copyWith(
                            color: disabled
                                ? colors.textDisabled
                                : buttonVarient != ButtonVarient.filled
                                    ? buttonState?.color
                                    : colors.textOnColor,
                          ),
                        )
                      : const SizedBox(),
                  if (suffixIcon != null)
                    Container(
                      padding: EdgeInsets.only(left: 10.wp),
                      child: Icon(
                        suffixIcon,
                        size: iconSize,
                        color: disabled
                            ? colors.iconDisabled
                            : suffixColor ??
                                (buttonVarient != ButtonVarient.filled
                                    ? buttonState?.color
                                    : colors.iconOnColor),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
