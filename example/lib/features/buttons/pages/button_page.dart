import 'package:example/core/common/bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:rara_design_system/components/buttons/custom_filled_button.dart';
import 'package:rara_design_system/core/enums/buttons/button_state_enum.dart';
import 'package:rara_design_system/core/enums/buttons/button_varient_enum.dart';
import 'package:rara_design_system/core/enums/buttons/buttons_size_enum.dart';
import 'package:rara_design_system/core/utils/size_utils.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  Widget buildButton(
      BuildContext context,
      String title,
      ButtonSize size,
      ButtonState state,
      String buttonState,
      IconData prefixIcon,
      IconData suffixIcon,
      ButtonVarient varient,
      bool disabled) {
    return CustomButton(
      title: title,
      buttonSize: size,
      buttonState: state,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      buttonVarient: varient,
      disabled: disabled,
      onPressed: disabled
          ? null
          : () {
              customBottomSheet(context, '''
        CustomButton(
          title: "$title",
          buttonSize: $size,
          buttonState: $buttonState,
          prefixIcon: $prefixIcon,
          suffixIcon: $suffixIcon,
          buttonVarient: $varient,
          disabled: $disabled,
          ),
        ''');
            },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Small",
                style: TextStyle(fontSize: 26),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    // Default
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.small,
                        ButtonState.defaultState(),
                        "ButtonState.defaultState()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.filled,
                        false),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.small,
                        ButtonState.defaultState(),
                        "ButtonState.defaultState()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.outline,
                        false),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.small,
                        ButtonState.defaultState(),
                        "ButtonState.defaultState()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.ghost,
                        false),

                    //depressed
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.small,
                        ButtonState.depressed(),
                        "ButtonState.depressed()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.filled,
                        false),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.small,
                        ButtonState.depressed(),
                        "ButtonState.depressed()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.outline,
                        false),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.small,
                        ButtonState.depressed(),
                        "ButtonState.depressed()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.ghost,
                        false),

                    //disable
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.small,
                        ButtonState.disable(),
                        "ButtonState.disable()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.filled,
                        true),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.small,
                        ButtonState.disable(),
                        "ButtonState.disable()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.outline,
                        true),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.small,
                        ButtonState.disable(),
                        "ButtonState.disable()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.ghost,
                        true),

                    //error
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.small,
                        ButtonState.error(),
                        "ButtonState.error()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.filled,
                        false),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.small,
                        ButtonState.error(),
                        "ButtonState.error()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.outline,
                        false),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.small,
                        ButtonState.error(),
                        "ButtonState.error()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.ghost,
                        false),

                    //errror depressed
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.small,
                        ButtonState.errorDepressed(),
                        "ButtonState.errorDepressed()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.filled,
                        false),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.small,
                        ButtonState.errorDepressed(),
                        "ButtonState.errorDepressed()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.outline,
                        false),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.small,
                        ButtonState.errorDepressed(),
                        "ButtonState.errorDepressed()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.ghost,
                        false),
                  ],
                ),
              ),
              SizedBox(
                height: 20.hp,
              ),
              const Text(
                "Medium",
                style: TextStyle(fontSize: 26),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    // Default
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.medium,
                        ButtonState.defaultState(),
                        "ButtonState.defaultState()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.filled,
                        false),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.medium,
                        ButtonState.defaultState(),
                        "ButtonState.defaultState()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.outline,
                        false),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.medium,
                        ButtonState.defaultState(),
                        "ButtonState.defaultState()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.ghost,
                        false),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.medium,
                        ButtonState.depressed(),
                        "ButtonState.depressed()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.filled,
                        false),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.medium,
                        ButtonState.depressed(),
                        "ButtonState.depressed()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.outline,
                        false),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.medium,
                        ButtonState.depressed(),
                        "ButtonState.depressed()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.ghost,
                        false),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.medium,
                        ButtonState.disable(),
                        "ButtonState.disable()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.filled,
                        true),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.medium,
                        ButtonState.disable(),
                        "ButtonState.disable()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.outline,
                        true),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.medium,
                        ButtonState.disable(),
                        "ButtonState.disable()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.ghost,
                        true),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.medium,
                        ButtonState.error(),
                        "ButtonState.error()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.filled,
                        false),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.medium,
                        ButtonState.error(),
                        "ButtonState.error()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.outline,
                        false),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.medium,
                        ButtonState.error(),
                        "ButtonState.error()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.ghost,
                        false),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.medium,
                        ButtonState.errorDepressed(),
                        "ButtonState.errorDepressed()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.filled,
                        false),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.medium,
                        ButtonState.errorDepressed(),
                        "ButtonState.errorDepressed()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.outline,
                        false),
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.medium,
                        ButtonState.errorDepressed(),
                        "ButtonState.errorDepressed()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.ghost,
                        false),
                  ],
                ),
              ),
              SizedBox(
                height: 20.hp,
              ),
              const Text(
                "Large",
                style: TextStyle(fontSize: 26),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    // Default
                    buildButton(
                        context,
                        "Button",
                        ButtonSize.large,
                        ButtonState.defaultState(),
                        "ButtonState.defaultState()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.filled,
                        false),

                    buildButton(
                        context,
                        "Button",
                        ButtonSize.large,
                        ButtonState.defaultState(),
                        "ButtonState.defaultState()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.outline,
                        false),

                    buildButton(
                        context,
                        "Button",
                        ButtonSize.large,
                        ButtonState.defaultState(),
                        "ButtonState.defaultState()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.ghost,
                        false),

                    buildButton(
                        context,
                        "Button",
                        ButtonSize.large,
                        ButtonState.depressed(),
                        "ButtonState.depressed()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.filled,
                        false),

                    buildButton(
                        context,
                        "Button",
                        ButtonSize.large,
                        ButtonState.depressed(),
                        "ButtonState.depressed()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.outline,
                        false),

                    buildButton(
                        context,
                        "Button",
                        ButtonSize.large,
                        ButtonState.depressed(),
                        "ButtonState.depressed()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.ghost,
                        false),

                    buildButton(
                        context,
                        "Button",
                        ButtonSize.large,
                        ButtonState.disable(),
                        "ButtonState.disable()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.filled,
                        true),

                    buildButton(
                        context,
                        "Button",
                        ButtonSize.large,
                        ButtonState.disable(),
                        "ButtonState.disable()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.outline,
                        true),

                    buildButton(
                        context,
                        "Button",
                        ButtonSize.large,
                        ButtonState.disable(),
                        "ButtonState.disable()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.ghost,
                        true),

                    buildButton(
                        context,
                        "Button",
                        ButtonSize.large,
                        ButtonState.error(),
                        "ButtonState.error()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.filled,
                        false),

                    buildButton(
                        context,
                        "Button",
                        ButtonSize.large,
                        ButtonState.error(),
                        "ButtonState.error()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.outline,
                        false),

                    buildButton(
                        context,
                        "Button",
                        ButtonSize.large,
                        ButtonState.error(),
                        "ButtonState.error()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.ghost,
                        false),

                    buildButton(
                        context,
                        "Button",
                        ButtonSize.large,
                        ButtonState.errorDepressed(),
                        "ButtonState.errorDepressed()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.filled,
                        false),

                    buildButton(
                        context,
                        "Button",
                        ButtonSize.large,
                        ButtonState.errorDepressed(),
                        "ButtonState.errorDepressed()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.outline,
                        false),

                    buildButton(
                        context,
                        "Button",
                        ButtonSize.large,
                        ButtonState.errorDepressed(),
                        "ButtonState.errorDepressed()",
                        Icons.arrow_back_ios,
                        Icons.arrow_forward_ios,
                        ButtonVarient.ghost,
                        false),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
