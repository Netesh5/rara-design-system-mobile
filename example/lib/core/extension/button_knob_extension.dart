import 'package:example/features/buttons/pages/button_knob.dart';
import 'package:rara_design_system/core/enums/buttons/button_varient_enum.dart';
import 'package:widgetbook/widgetbook.dart';

extension ButtonKnob on KnobsBuilder {
  ButtonVarient varient({required String label}) {
    return onKnobAdded(
      ButtonVarientKnob(label: label, initialValue: ButtonVarient.filled),
    )!;
  }
}
