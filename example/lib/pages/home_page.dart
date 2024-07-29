import 'package:example/core/enums/components_type_enums.dart';
import 'package:example/core/extension/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rara_design_system/components/buttons/custom_filled_button.dart';
import 'package:rara_design_system/components/buttons/custom_outline_button.dart';
import 'package:rara_design_system/core/animations/tap_effect.dart';
import 'package:rara_design_system/core/enums/buttons/button_state_enum.dart';
import 'package:rara_design_system/core/enums/buttons/buttons_size_enum.dart';
import 'package:rara_design_system/core/extension/build_context_extension.dart';

import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/theme/cubit/theme_cubit.dart';
import 'package:rara_design_system/core/theme/interface/itheme.dart';
import 'package:rara_design_system/core/utils/size_utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = rg<ITheme>().colors(context);
    return Scaffold(
      backgroundColor: colors.surfaceLayout,
      appBar: AppBar(
        title: const Text("Rara Design System"),
        backgroundColor: colors.surfaceLayout,
        actions: [
          IconButton(
            onPressed: () {
              context.read<ThemeCubit>().toogleTheme(context);
            },
            icon: context.isDarkMode
                ? const Icon(Icons.dark_mode)
                : const Icon(
                    Icons.sunny,
                  ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: ComponentType.values.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: ((context, index) {
            return TapEffect(
              child: GestureDetector(
                child: Card(
                  child: Text(
                    ComponentType.values[index].name.capitalize(),
                    style: TextStyle(
                      fontSize: 30.wp,
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
