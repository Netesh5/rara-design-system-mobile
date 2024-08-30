import 'package:flutter/material.dart';
import 'package:rara_design_system/core/buttons/buttons.dart';
import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/services/navigation_service/navigation_service.dart';
import 'package:rara_design_system/core/theme/interface/itheme.dart';

import 'package:rara_design_system/core/utils/size_utils.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leadingIcon;
  final Widget? centerWidget;
  final List<Widget> actions;
  final PreferredSizeWidget? bottom;
  final Color? backgroundColor;
  final Color? tabBackgroundColor;
  final String title;
  final TextStyle? titleStyle;
  final bool showBottomBorder;
  final Function()? onBackPressed;
  final bool showBackButton;
  final bool centerMiddle;
  final double? leftPadding;
  final double? rightPadding;
  final double topPadding;
  final bool showShadow;
  final Color? backButtonColor;
  const CustomAppBar({
    super.key,
    this.centerWidget,
    this.leadingIcon,
    this.bottom,
    this.backgroundColor,
    this.tabBackgroundColor,
    required this.title,
    this.titleStyle,
    this.actions = const [],
    this.showBottomBorder = true,
    this.onBackPressed,
    this.centerMiddle = false,
    this.showBackButton = true,
    this.leftPadding,
    this.rightPadding,
    this.topPadding = 4,
    this.showShadow = true,
    this.backButtonColor,
  });

  Widget? getLeadingIcon(BuildContext context) {
    bool canPop = NavigationService.canPop;
    final colors = rg<ITheme>().colors(context);
    if (leadingIcon != null) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [leadingIcon!],
      );
    } else {
      if (showBackButton && canPop) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
                onPressed: () async {
                  await NavigationService.mayBePop;
                },
                backgroundColor: backButtonColor ?? colors.iconPrimary,
                padding: 2,
                icon: Icons.arrow_back,
                iconColor: backButtonColor ?? colors.iconPrimary),
          ],
        );
      } else {
        return null;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Container(
            padding: EdgeInsets.only(
              left: leftPadding ?? 10.wp,
              right: rightPadding ?? 10.wp,
              top: MediaQuery.of(context).padding.top + topPadding,
            ),
            decoration: BoxDecoration(
              color: backgroundColor ?? theme.scaffoldBackgroundColor,
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 56),
              child: NavigationToolbar(
                leading: getLeadingIcon(context),
                middle: centerWidget ??
                    Text(
                      title,
                      style: titleStyle,
                    ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: actions,
                ),
                centerMiddle: centerMiddle,
                middleSpacing: NavigationToolbar.kMiddleSpacing,
              ),
            ),
          ),
        ),
        if (bottom != null)
          Container(
            color: tabBackgroundColor,
            child: bottom!,
          )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(160);
}
