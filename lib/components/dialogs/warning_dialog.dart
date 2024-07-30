import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rara_design_system/components/buttons/custom_button.dart';
import 'package:rara_design_system/core/constants/assets.dart';
import 'package:rara_design_system/core/enums/buttons/button_state_enum.dart';
import 'package:rara_design_system/core/enums/buttons/button_varient_enum.dart';
import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/services/navigation_service/navigation_service.dart';
import 'package:rara_design_system/core/theme/interface/itheme.dart';
import 'package:rara_design_system/core/utils/size_utils.dart';

showWarningDialog(
  BuildContext context,
  String title, {
  String? message,
  TextStyle? titleStyle,
  TextStyle? messageStyle,
  VoidCallback? onTap,
  VoidCallback? onCancel,
  TextStyle? onTapStyle,
  TextStyle? onCancelStyle,
  bool barrierDismissible = false,
}) {
  final colors = rg<ITheme>().colors(context);
  showDialog(
      barrierDismissible: barrierDismissible,
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: colors.surfaceBackground,
          icon: SvgPicture.asset(
            Assets.warning,
            width: 40.wp,
            height: 40.hp,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 10.hp,
              ),
              Text(
                title,
                style: titleStyle ??
                    TextStyle(
                      color: colors.textPrimary,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
              ),
              SizedBox(
                height: 10.hp,
              ),
              Text(
                message ??
                    "The process could damage existing file.\n           Do you still want to proceed?",
                style: TextStyle(
                  fontSize: 14,
                  color: colors.textSecondary,
                ),
              ),
              SizedBox(
                height: 30.hp,
              ),
              CustomButton(
                height: 43.hp,
                title: "Continue",
                titleStyle: onTapStyle ??
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                buttonVarient: ButtonVarient.filled,
                buttonState: ButtonState.defaultState(),
                width: 272.wp,
                onPressed: onTap ??
                    () {
                      NavigationService.pop();
                    },
              ),
              SizedBox(
                height: 10.hp,
              ),
              CustomButton(
                height: 43.hp,
                title: "Cancel",
                titleStyle: onCancelStyle ??
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                buttonVarient: ButtonVarient.ghost,
                buttonState: ButtonState.error(),
                width: 272.wp,
                onPressed: onCancel ??
                    () {
                      NavigationService.pop();
                    },
              ),
            ],
          ),
        );
      });
}
