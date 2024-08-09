import 'package:flutter/material.dart';
import 'package:rara_design_system/components/buttons/custom_button.dart';
import 'package:rara_design_system/core/enums/buttons/button_state_enum.dart';
import 'package:rara_design_system/core/enums/buttons/button_varient_enum.dart';
import 'package:rara_design_system/core/enums/buttons/buttons_size_enum.dart';
import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/services/navigation_service/navigation_service.dart';
import 'package:rara_design_system/core/theme/interface/itheme.dart';
import 'package:rara_design_system/core/utils/size_utils.dart';

class BottomsheetFooter extends StatelessWidget {
  const BottomsheetFooter({
    super.key,
    this.cancelTitle,
    this.cancelButtonSize,
    this.cancelButtonState,
    this.cancelButtonVarient,
    this.doneButtonSize,
    this.doneButtonState,
    this.doneButtonVarient,
    this.doneTitle,
    this.onCancelPressed,
    this.onDonePressed,
  });

  //cancel
  final String? cancelTitle;
  final ButtonVarient? cancelButtonVarient;
  final ButtonSize? cancelButtonSize;
  final ButtonState? cancelButtonState;
//done
  final String? doneTitle;
  final ButtonVarient? doneButtonVarient;
  final ButtonSize? doneButtonSize;
  final ButtonState? doneButtonState;

  //Function
  final VoidCallback? onCancelPressed;
  final VoidCallback? onDonePressed;
  @override
  Widget build(BuildContext context) {
    final colors = rg<ITheme>().colors(context);
    return Column(
      children: [
        Divider(
          thickness: 0.2,
          color: colors.iconDisabled,
        ),
        SizedBox(
          height: 5.hp,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomButton(
              title: cancelTitle ?? "Cancel",
              buttonVarient: cancelButtonVarient ?? ButtonVarient.ghost,
              buttonSize: cancelButtonSize ?? ButtonSize.small,
              buttonState: cancelButtonState ?? ButtonState.error(),
              onPressed: onCancelPressed ??
                  () {
                    NavigationService.pop();
                  },
            ),
            CustomButton(
              title: doneTitle ?? "Done",
              buttonVarient: doneButtonVarient ?? ButtonVarient.filled,
              buttonSize: doneButtonSize ?? ButtonSize.small,
              buttonState: doneButtonState ?? ButtonState.defaultState(),
              onPressed: onDonePressed,
            ),
          ],
        ),
      ],
    );
  }
}
