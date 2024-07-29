import 'package:flutter/material.dart';
import 'package:rara_design_system/core/animations/tap_effect.dart';
import 'package:rara_design_system/core/enums/buttons/button_state_enum.dart';
import 'package:rara_design_system/core/enums/buttons/buttons_size_enum.dart';
import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/theme/interface/itheme.dart';
import 'package:rara_design_system/core/utils/size_utils.dart';

class CustomOutlineButton extends StatelessWidget {
  final IconData? prefixIcon;
  final Color? prefixColor;
  final IconData? suffixIcon;
  final Color? suffixColor;
  final String title;
  final TextStyle? titleStyle;
  final VoidCallback? onPressed;
  final EdgeInsets? containerMargin;
  final EdgeInsets? containerPadding;
  final bool showShadow;
  final double iconSize;
  final bool disabled;
  final bool enableTapEffect;
  final double height;
  final double width;

  final ButtonSize? buttonSize;
  final ButtonState? buttonState;
  final Color? borderColor;

  final int? flex;
  const CustomOutlineButton({
    super.key,
    required this.title,
    this.titleStyle,
    this.prefixIcon,
    this.prefixColor,
    this.suffixIcon,
    this.suffixColor,
    this.onPressed,
    this.containerMargin,
    this.containerPadding,
    this.flex = 1,
    this.showShadow = true,
    this.iconSize = 24,
    this.disabled = false,
    this.enableTapEffect = true,
    this.height = 36,
    this.width = 117,
    this.buttonSize,
    this.buttonState,
    this.borderColor,
  });

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
            border: Border.all(
          color: borderColor ?? colors.interactiveDefaultPrimary,
        )),
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
                      padding: EdgeInsets.only(right: 10.wp),
                      child: Icon(
                        prefixIcon,
                        size: iconSize,
                        color: disabled ? colors.surfaceDisabled : prefixColor,
                      ),
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: (titleStyle ??
                                TextStyle(
                                  fontSize: 14.wp,
                                  color: disabled
                                      ? colors.textDisabled
                                      : borderColor,
                                ))
                            .copyWith(
                          color: disabled ? colors.textDisabled : borderColor,
                        ),
                      ),
                    ],
                  ),
                  if (suffixIcon != null)
                    Container(
                      padding: EdgeInsets.only(left: 10.wp),
                      child: Icon(
                        suffixIcon,
                        size: iconSize,
                        color: disabled ? colors.iconDisabled : suffixColor,
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
