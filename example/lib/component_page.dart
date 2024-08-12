import 'package:example/core/enums/components_type_enums.dart';
import 'package:example/core/extension/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:rara_design_system/core/services/navigation_service/navigation_service.dart';

class ComponentPage extends StatelessWidget {
  const ComponentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ComponentType.values.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(ComponentType.values[index].name.capitalize()),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
          onTap: () {
            NavigationService.push(
              target: ComponentType.values[index].route,
            );
          },
        );
      },
    );
  }
}
