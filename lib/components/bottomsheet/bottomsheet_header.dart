import 'package:flutter/material.dart';
import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/services/navigation_service/navigation_service.dart';
import 'package:rara_design_system/core/theme/interface/itheme.dart';

class BottomsheetHeader extends StatelessWidget {
  const BottomsheetHeader({
    super.key,
    required this.title,
    this.prefixIcon,
    this.prefixColor,
    this.suffixIcon,
    this.suffixColor,
    this.iconSize = 16,
    this.perfixPressed,
    this.suffixPressed,
    this.titleStyle,
  });
  final String title;
  final IconData? suffixIcon;
  final Color? suffixColor;
  final double iconSize;
  final IconData? prefixIcon;
  final VoidCallback? perfixPressed;
  final VoidCallback? suffixPressed;
  final TextStyle? titleStyle;
  final Color? prefixColor;
  @override
  Widget build(BuildContext context) {
    final colors = rg<ITheme>().colors(context);
    return Row(
      children: [
        if (prefixIcon != null)
          IconButton(
            onPressed: perfixPressed ??
                () {
                  NavigationService.pop();
                },
            icon: Icon(
              prefixIcon,
              size: iconSize,
            ),
          ),
        Text(
          title,
          style:
              titleStyle ?? TextStyle(color: colors.textPrimary, fontSize: 16),
        ),
        if (suffixIcon != null)
          IconButton(
            onPressed: perfixPressed ??
                () {
                  NavigationService.pop();
                },
            icon: Icon(
              suffixIcon,
              size: iconSize,
            ),
          )
      ],
    );
  }
}
