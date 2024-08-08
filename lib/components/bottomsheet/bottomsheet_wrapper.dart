import 'package:flutter/material.dart';
import 'package:rara_design_system/components/bottomsheet/bottomsheet_footer.dart';
import 'package:rara_design_system/components/bottomsheet/bottomsheet_header.dart';

class BottomSheetWrapper extends StatelessWidget {
  const BottomSheetWrapper({
    super.key,
    required this.child,
    required this.title,
    this.textStyle,
  });
  final Widget child;
  final String title;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BottomsheetHeader(
          title: title,
          titleStyle: textStyle,
        ),
        child,
        const BottomsheetFooter(),
      ],
    );
  }
}
