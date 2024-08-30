import 'package:flutter/material.dart';
import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/theme/interface/itheme.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;
  final Color? iconColor;
  final Color backgroundColor;
  final double borderRadius;
  final double padding;
  final BoxBorder? border;
  final double iconSize;
  const CustomIconButton({
    super.key,
    required this.icon,
    this.onPressed,
    this.backgroundColor = Colors.white,
    this.iconColor,
    this.borderRadius = 100,
    this.padding = 9,
    this.border,
    this.iconSize = 26,
  });

  @override
  Widget build(BuildContext context) {
    final colors = rg<ITheme>().colors(context);
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(100),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
          border: border,
        ),
        padding: EdgeInsets.all(padding),
        child: Icon(
          icon,
          color: iconColor ?? colors.iconPrimary,
          size: iconSize,
        ),
      ),
    );
  }
}
