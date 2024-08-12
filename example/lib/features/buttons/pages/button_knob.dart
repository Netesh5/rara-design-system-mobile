import 'dart:developer';

import 'package:example/core/extension/string_extension.dart';
import 'package:rara_design_system/core/enums/buttons/button_state_enum.dart';
import 'package:rara_design_system/core/enums/buttons/button_varient_enum.dart';
import 'package:rara_design_system/core/enums/buttons/buttons_size_enum.dart';
import 'package:widgetbook/widgetbook.dart';

class ButtonVarientKnob extends Knob<ButtonVarient> {
  ButtonVarientKnob({required super.label, required super.initialValue});

  @override
  List<Field> get fields => [
        ListField(
          name: label,
          values: [
            ButtonVarient.filled.name.capitalize(),
            ButtonVarient.ghost.name.capitalize(),
            ButtonVarient.link.name.capitalize(),
            ButtonVarient.outline.name.capitalize(),
          ],
          initialValue: initialValue,
        ),
      ];

  @override
  ButtonVarient valueFromQueryGroup(Map<String, String> group) {
    log(group.toString());
    if (group[label] == ButtonVarient.filled.name.capitalize()) {
      return ButtonVarient.filled;
    }
    if (group[label] == ButtonVarient.ghost.name.capitalize()) {
      return ButtonVarient.ghost;
    }
    if (group[label] == ButtonVarient.link.name.capitalize()) {
      return ButtonVarient.link;
    }
    if (group[label] == ButtonVarient.outline.name.capitalize()) {
      return ButtonVarient.outline;
    } else {
      return ButtonVarient.filled;
    }
  }
}

class ButtonStateKnob extends Knob<ButtonState> {
  ButtonStateKnob({required super.label, required super.initialValue});

  @override
  List<Field> get fields => [
        ListField(
          name: label,
          values: [
            "Default",
            "Disable",
            "Depressed",
            "Error",
            "Error Depressed"
          ],
          initialValue: initialValue,
        )
      ];

  @override
  ButtonState valueFromQueryGroup(Map<String, String> group) {
    if (group[label] == "Default") {
      return ButtonState.defaultState();
    }
    if (group[label] == "Disable") {
      return ButtonState.disable();
    }
    if (group[label] == "Depressed") {
      return ButtonState.depressed();
    }
    if (group[label] == "Error") {
      return ButtonState.error();
    }
    if (group[label] == "Error Depressed") {
      return ButtonState.errorDepressed();
    } else {
      return ButtonState.defaultState();
    }
  }
}

class ButtonSizeKnob extends Knob<ButtonSize> {
  ButtonSizeKnob({required super.label, required super.initialValue});

  @override
  List<Field> get fields => [
        ListField(
          name: label,
          values: [
            ButtonSize.small.name.capitalize(),
            ButtonSize.medium.name.capitalize(),
            ButtonSize.large.name.capitalize()
          ],
          initialValue: initialValue,
        )
      ];

  @override
  ButtonSize valueFromQueryGroup(Map<String, String> group) {
    if (group[label] == ButtonSize.small.name.capitalize()) {
      return ButtonSize.small;
    }
    if (group[label] == ButtonSize.medium.name.capitalize()) {
      return ButtonSize.medium;
    }
    if (group[label] == ButtonSize.large.name.capitalize()) {
      return ButtonSize.medium;
    } else {
      return ButtonSize.small;
    }
  }
}
