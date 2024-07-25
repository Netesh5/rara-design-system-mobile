import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rara_design_system/core/theme/cubit/theme_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Theme",
            ),
          ),
        ],
      ),
      floatingActionButton: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.navigate_next_outlined),
      ),
    );
  }
}
