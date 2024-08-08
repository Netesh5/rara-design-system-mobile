import 'package:flutter/material.dart';

import 'package:rara_design_system/components/bottomsheet/bottomsheet_wrapper.dart';

showCustomBottomSheet({
  required BuildContext context,
  required Widget child,
  required String title,
  Color? backgroundColor,
  String? barrierLabel,
  double? elevation,
  ShapeBorder? shape,
  Clip? clipBehavior,
  BoxConstraints? constraints,
  Color? barrierColor,
  bool isScrollControlled = false,
  bool useRootNavigator = false,
  bool isDismissible = true,
  bool enableDrag = true,
  bool? showDragHandle,
  bool useSafeArea = false,
  RouteSettings? routeSettings,
  AnimationController? transitionAnimationController,
  Offset? anchorPoint,
}) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: backgroundColor,
    isDismissible: isDismissible,
    enableDrag: enableDrag,
    showDragHandle: showDragHandle,
    useRootNavigator: useRootNavigator,
    useSafeArea: useSafeArea,
    routeSettings: routeSettings,
    transitionAnimationController: transitionAnimationController,
    anchorPoint: anchorPoint,
    clipBehavior: clipBehavior,
    constraints: constraints,
    barrierColor: barrierColor,
    barrierLabel: barrierLabel,
    builder: (context) => BottomSheetWrapper(
      title: title,
      child: child,
    ),
  );
}
