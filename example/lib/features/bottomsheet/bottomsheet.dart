import 'package:example/core/common/bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:rara_design_system/components/bottomsheet/custom_bottomsheet.dart';
import 'package:rara_design_system/components/buttons/custom_button.dart';
import 'package:rara_design_system/components/dialogs/success_dialog.dart';
import 'package:rara_design_system/core/enums/buttons/button_state_enum.dart';
import 'package:rara_design_system/core/enums/buttons/button_varient_enum.dart';
import 'package:rara_design_system/core/enums/buttons/buttons_size_enum.dart';
import 'package:rara_design_system/core/utils/size_utils.dart';

class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottomsheet"),
      ),
      body: Center(
        child: CustomButton(
          title: "Show ButtomSheet",
          buttonVarient: ButtonVarient.filled,
          buttonSize: ButtonSize.large,
          buttonState: ButtonState.defaultState(),
          onPressed: () {
            showCustomBottomSheet(
              isScrollControlled: true,
              context: context,
              doneTitle: "Show Code",
              child: Container(
                width: 200.w,
                height: 400.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://avatars.githubusercontent.com/u/63892396?s=280&v=4"),
                  ),
                ),
              ),
              title: "Custom Title",
              onDonePressed: () {
                customBottomSheet(context, '''
 showCustomBottomSheet(
              isScrollControlled: true,
              context: context,
              child: Container(
                width: 200.w,
                height: 400.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://avatars.githubusercontent.com/u/63892396?s=280&v=4"),
                  ),
                ),
              ),
              title: "Custom Title",
              ),
''');
              },
            );
          },
        ),
      ),
    );
  }
}
