import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rara_design_system/components/buttons/custom_filled_button.dart';
import 'package:rara_design_system/core/enums/buttons/button_state_enum.dart';
import 'package:rara_design_system/core/enums/buttons/buttons_size_enum.dart';

import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/theme/cubit/theme_cubit.dart';
import 'package:rara_design_system/core/theme/interface/itheme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = rg<ITheme>().colors(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
        actions: [
          IconButton(
            onPressed: () {
              context.read<ThemeCubit>().toogleTheme(context);
            },
            icon: const Icon(
              Icons.sunny,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Theme",
              style: TextStyle(
                color: colors.textPrimary,
              ),
            ),
          ),
          CustomFilledButton(
            title: "Test",
            buttonSize: ButtonSize.small,
            buttonState: ButtonState.error(),
          )
        ],
      ),
      floatingActionButton: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.navigate_next_outlined),
      ),
    );
  }
}
