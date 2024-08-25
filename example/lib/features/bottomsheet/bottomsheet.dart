import 'package:example/core/common/bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:rara_design_system/components/bottomsheet/custom_bottomsheet.dart';
import 'package:rara_design_system/components/buttons/custom_button.dart';
import 'package:rara_design_system/core/enums/buttons/button_state_enum.dart';
import 'package:rara_design_system/core/enums/buttons/button_varient_enum.dart';
import 'package:rara_design_system/core/enums/buttons/buttons_size_enum.dart';
import 'package:rara_design_system/core/utils/size_utils.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

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
              body: Container(
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
                showCodeBottomSheet(context, '''
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

@widgetbook.UseCase(name: 'Bottomsheet', type: BottomSheet, path: "components")
BottomSheet showBottomSheet(BuildContext context) {
  return const BottomSheet();
}

class BottomSheet extends StatefulWidget {
  const BottomSheet({super.key});

  @override
  State<BottomSheet> createState() => _ShowBottomSheetState();
}

class _ShowBottomSheetState extends State<BottomSheet> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      bottomsheet();
    });
    super.initState();
  }

  bottomsheet() {
    showCustomBottomSheet(
      barrierColor: Colors.transparent,
      borderRadius: 12,
      context: context,
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
      body: Container(
        width: 200.w,
        height: 400.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://avatars.githubusercontent.com/u/63892396?s=280&v=4"),
          ),
        ),
      ),
      title: "Custom Buttonsheet",
      onClosePressed: () {
        Navigator.of(context).pop();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      title: "Bottomsheet",
      buttonVarient: ButtonVarient.filled,
      onPressed: () {
        showCodeBottomSheet(context, '''
 showCustomBottomSheet(
              isScrollControlled: true,
              context: context,
              body: Container(
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
  }
}
