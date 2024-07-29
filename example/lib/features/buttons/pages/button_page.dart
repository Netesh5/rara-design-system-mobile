import 'package:flutter/material.dart';
import 'package:rara_design_system/components/buttons/custom_filled_button.dart';
import 'package:rara_design_system/core/enums/buttons/button_state_enum.dart';
import 'package:rara_design_system/core/enums/buttons/button_varient_enum.dart';
import 'package:rara_design_system/core/enums/buttons/buttons_size_enum.dart';
import 'package:rara_design_system/core/utils/size_utils.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

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
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.small,
                      buttonState: ButtonState.defaultState(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.filled,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.small,
                      buttonState: ButtonState.defaultState(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.outline,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.small,
                      buttonState: ButtonState.defaultState(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.ghost,
                    ),

                    //Depressed
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.small,
                      buttonState: ButtonState.depressed(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.filled,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.small,
                      buttonState: ButtonState.depressed(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.outline,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.small,
                      buttonState: ButtonState.depressed(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.ghost,
                    ),

                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.small,
                      buttonState: ButtonState.disable(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.filled,
                      disabled: true,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.small,
                      buttonState: ButtonState.disable(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.outline,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.small,
                      buttonState: ButtonState.disable(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.ghost,
                    ),

                    //error
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.small,
                      buttonState: ButtonState.error(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.filled,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.small,
                      buttonState: ButtonState.error(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.outline,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.small,
                      buttonState: ButtonState.error(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.ghost,
                    ),

                    //error depressed
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.small,
                      buttonState: ButtonState.errorDepressed(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.filled,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.small,
                      buttonState: ButtonState.errorDepressed(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.outline,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.small,
                      buttonState: ButtonState.errorDepressed(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.ghost,
                    ),
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
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.medium,
                      buttonState: ButtonState.defaultState(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.filled,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.medium,
                      buttonState: ButtonState.defaultState(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.outline,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.medium,
                      buttonState: ButtonState.defaultState(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.ghost,
                    ),

                    //Depressed
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.medium,
                      buttonState: ButtonState.depressed(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.filled,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.medium,
                      buttonState: ButtonState.depressed(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.outline,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.medium,
                      buttonState: ButtonState.depressed(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.ghost,
                    ),

                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.medium,
                      buttonState: ButtonState.disable(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.filled,
                      disabled: true,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.medium,
                      buttonState: ButtonState.disable(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.outline,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.medium,
                      buttonState: ButtonState.disable(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.ghost,
                    ),

                    //error
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.medium,
                      buttonState: ButtonState.error(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.filled,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.medium,
                      buttonState: ButtonState.error(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.outline,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.medium,
                      buttonState: ButtonState.error(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.ghost,
                    ),

                    //error depressed
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.medium,
                      buttonState: ButtonState.errorDepressed(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.filled,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.medium,
                      buttonState: ButtonState.errorDepressed(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.outline,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.medium,
                      buttonState: ButtonState.errorDepressed(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.ghost,
                    ),
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
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.large,
                      buttonState: ButtonState.defaultState(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.filled,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.large,
                      buttonState: ButtonState.defaultState(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.outline,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.large,
                      buttonState: ButtonState.defaultState(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.ghost,
                    ),

                    //Depressed
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.large,
                      buttonState: ButtonState.depressed(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.filled,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.large,
                      buttonState: ButtonState.depressed(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.outline,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.large,
                      buttonState: ButtonState.depressed(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.ghost,
                    ),

                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.large,
                      buttonState: ButtonState.disable(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.filled,
                      disabled: true,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.large,
                      buttonState: ButtonState.disable(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.outline,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.large,
                      buttonState: ButtonState.disable(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.ghost,
                    ),

                    //error
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.large,
                      buttonState: ButtonState.error(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.filled,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.large,
                      buttonState: ButtonState.error(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.outline,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.large,
                      buttonState: ButtonState.error(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.ghost,
                    ),

                    //error depressed
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.large,
                      buttonState: ButtonState.errorDepressed(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.filled,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.large,
                      buttonState: ButtonState.errorDepressed(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.outline,
                    ),
                    CustomButton(
                      title: "Button",
                      buttonSize: ButtonSize.large,
                      buttonState: ButtonState.errorDepressed(),
                      prefixIcon: Icons.arrow_back_ios,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonVarient: ButtonVarient.ghost,
                    ),
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
