import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rara_design_system/components/buttons/custom_filled_button.dart';
import 'package:rara_design_system/core/constants/assets.dart';
import 'package:rara_design_system/core/enums/buttons/button_state_enum.dart';
import 'package:rara_design_system/core/enums/buttons/button_varient_enum.dart';
import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/services/navigation_service/navigation_service.dart';
import 'package:rara_design_system/core/theme/interface/itheme.dart';
import 'package:rara_design_system/core/utils/size_utils.dart';

showSucessDialog(
  String? message,
  TextStyle? titleStyle,
  TextStyle? messageStyle,
  VoidCallback? onTap,
  VoidCallback? onCancel, {
  required BuildContext context,
  required String title,
}) {
  final colors = rg<ITheme>().colors(context);
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            children: [
              SvgPicture.asset(Assets.sucess),
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
                height: 5.hp,
              ),
              Text(
                message ?? "The process is successfully completed.",
                style: TextStyle(
                  fontSize: 14,
                  color: colors.textSecondary,
                ),
              ),
              SizedBox(
                height: 20.hp,
              ),
              CustomButton(
                title: "Okay",
                buttonVarient: ButtonVarient.filled,
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
                title: "Cancel",
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
