import 'package:example/features/buttons/pages/button_page.dart';
import 'package:example/features/dialogs/dialogs_page.dart';
import 'package:flutter/material.dart';

enum ComponentType {
  buttons(route: ButtonPage()),
  dialogs(route: DialogsPage());

  final Widget route;

  const ComponentType({required this.route});
}
