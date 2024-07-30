import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:rara_design_system/components/buttons/custom_button.dart';

import 'package:rara_design_system/core/enums/buttons/button_varient_enum.dart';
import 'package:rara_design_system/core/extension/build_context_extension.dart';
import 'package:rara_design_system/core/services/navigation_service/navigation_service.dart';

customBottomSheet(BuildContext context, String code) {
  return showModalBottomSheet(
    context: context,
    showDragHandle: true,
    builder: (context) => _CustomBottomSheet(
      code: code,
    ),
  );
}

class _CustomBottomSheet extends StatelessWidget {
  final String code;
  const _CustomBottomSheet({required this.code});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Center(
            child: SyntaxView(
              fontSize: 16,
              code: code,
              syntax: Syntax.DART,
              syntaxTheme: context.isDarkMode
                  ? SyntaxTheme.vscodeDark()
                  : SyntaxTheme.vscodeLight(),
              withZoom: false,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            title: "Copy to clipboard",
            width: 150,
            buttonVarient: ButtonVarient.filled,
            onPressed: () {
              Clipboard.setData(ClipboardData(text: code)).then((_) {
                ScaffoldMessenger.of(context)
                  ..removeCurrentSnackBar()
                  ..showSnackBar(
                    const SnackBar(
                      behavior: SnackBarBehavior.floating,
                      content: Text("Code copied to clipboard"),
                    ),
                  );
              });
              NavigationService.pop();
            },
          )
        ],
      ),
    );
  }
}
