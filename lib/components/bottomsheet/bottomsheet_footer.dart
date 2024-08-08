import 'package:flutter/material.dart';
import 'package:rara_design_system/components/buttons/custom_button.dart';
import 'package:rara_design_system/core/enums/buttons/button_state_enum.dart';
import 'package:rara_design_system/core/enums/buttons/button_varient_enum.dart';
import 'package:rara_design_system/core/enums/buttons/buttons_size_enum.dart';

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
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          title: cancelTitle ?? "Cancel",
          buttonVarient: cancelButtonVarient ?? ButtonVarient.ghost,
          buttonSize: cancelButtonSize ?? ButtonSize.small,
          buttonState: cancelButtonState ?? ButtonState.error(),
        ),
        CustomButton(
          title: cancelTitle ?? "Done",
          buttonVarient: doneButtonVarient ?? ButtonVarient.filled,
          buttonSize: doneButtonSize ?? ButtonSize.small,
          buttonState: doneButtonState ?? ButtonState.defaultState(),
        ),
      ],
    );
  }
}
