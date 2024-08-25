import 'package:flutter/material.dart';

import 'package:rara_design_system/components/bottomsheet/bottomsheet_wrapper.dart';

showCustomBottomSheet({
  required BuildContext context,
  required Widget body,
  required String title,
  Color? backgroundColor,
  String? barrierLabel,
  double? elevation,
  double? borderRadius,
  ShapeBorder? shape,
  Clip? clipBehavior,
  BoxConstraints? constraints,
  Color? barrierColor,
  bool isScrollControlled = false,
  bool useRootNavigator = false,
  bool isDismissible = true,
  bool enableDrag = true,
  bool? showDragHandle,
  bool useSafeArea = true,
  RouteSettings? routeSettings,
  AnimationController? transitionAnimationController,
  Offset? anchorPoint,
  VoidCallback? onClosePressed,
  VoidCallback? onDonePressed,
  //cancel
  final String? cancelTitle,

//done
  final String? doneTitle,
}) {
  return showModalBottomSheet(
    shape: shape ??
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 0)),
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
      onCancelPressed: onClosePressed,
      onDonePressed: onDonePressed,
      cancelTitle: cancelTitle,
      doneTitle: doneTitle,
      child: body,
    ),
  );
}
