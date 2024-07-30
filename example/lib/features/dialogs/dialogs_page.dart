import 'package:flutter/material.dart';
import 'package:rara_design_system/components/buttons/custom_filled_button.dart';
import 'package:rara_design_system/components/dialogs/failure_dialog.dart';
import 'package:rara_design_system/components/dialogs/success_dialog.dart';
import 'package:rara_design_system/components/dialogs/warning_dialog.dart';
import 'package:rara_design_system/core/enums/buttons/button_varient_enum.dart';
import 'package:rara_design_system/core/enums/buttons/buttons_size_enum.dart';
import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/theme/interface/itheme.dart';
import 'package:rara_design_system/core/utils/size_utils.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = rg<ITheme>().colors(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialogs"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomButton(
              title: "Success Dialog",
              onPressed: () {
                showSucessDialog(
                  context,
                  "Success Dialog",
                );
              },
              buttonVarient: ButtonVarient.filled,
              buttonSize: ButtonSize.large,
            ),
            SizedBox(
              height: 20.hp,
            ),
            CustomButton(
              fillColor: colors.feedbackWarningPrimary,
              title: "Warning Dialog",
              onPressed: () {
                showWarningDialog(
                  context,
                  "Warning Dialog",
                );
              },
              buttonVarient: ButtonVarient.filled,
              buttonSize: ButtonSize.large,
            ),
            SizedBox(
              height: 20.hp,
            ),
            CustomButton(
              fillColor: colors.interactiveCriticalPrimary,
              title: "Failure Dialog",
              onPressed: () {
                showFailureDialog(
                  context,
                  "Failure Dialog",
                );
              },
              buttonVarient: ButtonVarient.filled,
              buttonSize: ButtonSize.large,
            ),
          ],
        ),
      ),
    );
  }
}
