import 'package:flutter/material.dart';

import 'package:rara_design_system/components/bottomsheet/bottomsheet_footer.dart';
import 'package:rara_design_system/components/bottomsheet/bottomsheet_header.dart';
import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/theme/interface/itheme.dart';
import 'package:rara_design_system/core/utils/size_utils.dart';

class BottomSheetWrapper extends StatelessWidget {
  const BottomSheetWrapper({
    super.key,
    required this.child,
    required this.title,
    this.textStyle,
    this.padding = 12,
    this.onDonePressed,
    this.onCancelPressed,
    this.cancelTitle,
    this.doneTitle,
  });
  final Widget child;
  final String title;
  final TextStyle? textStyle;
  final double padding;
  final VoidCallback? onCancelPressed;
  final VoidCallback? onDonePressed;

  //cancel
  final String? cancelTitle;

//done
  final String? doneTitle;

  @override
  Widget build(BuildContext context) {
    final colors = rg<ITheme>().colors(context);
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Column(
        children: [
          BottomsheetHeader(
            title: title,
            titleStyle: textStyle,
          ),
          Divider(
            thickness: 0.2,
            color: colors.iconDisabled,
          ),
          SizedBox(
            height: 10.hp,
          ),
          Expanded(child: child),
          SizedBox(
            height: 10.hp,
          ),
          BottomsheetFooter(
            onCancelPressed: onCancelPressed,
            onDonePressed: onDonePressed,
            cancelTitle: cancelTitle,
            doneTitle: doneTitle,
          ),
          SizedBox(
            height: 20.hp,
          )
        ],
      ),
    );
  }
}
