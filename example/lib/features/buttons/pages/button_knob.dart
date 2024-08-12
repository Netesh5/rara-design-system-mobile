import 'dart:developer';

import 'package:example/core/extension/string_extension.dart';
import 'package:rara_design_system/core/enums/buttons/button_varient_enum.dart';
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
