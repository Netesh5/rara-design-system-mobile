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

  factory ButtonState.defaultState({Color? color}) {
    return ButtonState._(color: color ?? colors.interactiveDefaultPrimary);
  }
  factory ButtonState.depressed({Color? color}) {
    return ButtonState._(color: color ?? colors.interactiveDefaultDepressed);
  }
  factory ButtonState.disable({Color? color}) {
    return ButtonState._(color: color ?? colors.surfaceDisabled);
  }
  factory ButtonState.error({Color? color}) {
    return ButtonState._(color: color ?? colors.interactiveCriticalPrimary);
  }
  factory ButtonState.errorDepressed({Color? color}) {
    return ButtonState._(color: color ?? colors.interactiveCriticalDepressed);
  }
}
