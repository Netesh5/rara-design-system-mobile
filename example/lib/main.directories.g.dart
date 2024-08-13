// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:example/features/buttons/pages/button_page.dart' as _i2;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'components',
    children: [
      _i1.WidgetbookFolder(
        name: 'buttons',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'CustomButton',
            useCase: _i1.WidgetbookUseCase(
              name: 'Customizable',
              builder: _i2.customizableButton,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'CustomFAButton',
            useCase: _i1.WidgetbookUseCase(
              name: 'Customizable',
              builder: _i2.customFAButton,
            ),
          ),
        ],
      )
    ],
  )
];
