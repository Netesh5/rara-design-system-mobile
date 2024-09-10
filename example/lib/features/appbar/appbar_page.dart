import 'package:flutter/material.dart';
import 'package:rara_design_system/core/appbars/appbars.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook/widgetbook.dart';

@widgetbook.UseCase(
  name: 'Customizable',
  type: Scaffold,
)
Scaffold appBar(BuildContext context) {
  return Scaffold(
    appBar: CustomAppBar(
      title:
          context.knobs.string(label: "Title  ", initialValue: "App bar title"),
      titleStyle: TextStyle(
          fontSize: context.knobs.double.input(
            label: "Font size",
            initialValue: 18,
          ),
          fontWeight: context.knobs.list(
            label: "Font Weight",
            options: [
              FontWeight.w100,
              FontWeight.w200,
              FontWeight.w300,
              FontWeight.w400,
              FontWeight.w500,
              FontWeight.w600,
              FontWeight.w700,
            ],
          ),
          color: context.knobs.color(
            label: "Text color",
            initialValue: Colors.black,
          )),
      backgroundColor: context.knobs.color(label: "Background Color"),
      centerMiddle:
          context.knobs.boolean(label: "Center Title", initialValue: false),
      showBackButton:
          context.knobs.boolean(label: "Show Back Button", initialValue: true),
    ),
  );
}
