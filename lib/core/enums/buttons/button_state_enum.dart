import 'package:flutter/material.dart';
import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/services/navigation_service/navigation_service.dart';

import 'package:rara_design_system/core/theme/interface/itheme.dart';

// enum ButtonState {
//   defaultState(color: getColors().interactiveDefaultPrimary);

//   final Color color;

//   const ButtonState({required this.color});
// }

// IColors getColors() {
//   return rg<ITheme>().colors(NavigationService.context);
// }

class ButtonState {
  final Color color;
  ButtonState._({required this.color});

  static final colors = rg<ITheme>().colors(NavigationService.context);

  factory ButtonState.defaultState() {
    return ButtonState._(color: colors.interactiveDefaultPrimary);
  }
  factory ButtonState.depressed() {
    return ButtonState._(color: colors.interactiveDefaultDepressed);
  }
  factory ButtonState.disable() {
    return ButtonState._(color: colors.surfaceDisabled);
  }
  factory ButtonState.error() {
    return ButtonState._(color: colors.interactiveCriticalPrimary);
  }
  factory ButtonState.errorDepressed() {
    return ButtonState._(color: colors.interactiveCriticalDepressed);
  }
}
