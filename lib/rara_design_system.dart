library rara_design_system;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rara_design_system/core/injection/injection.dart';
import 'package:rara_design_system/core/theme/cubit/theme_cubit.dart';

class ThemeWrapper extends StatelessWidget {
  final Widget child;

  const ThemeWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => g<ThemeCubit>(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, appTheme) {
          return MaterialApp(
            theme: appTheme,
            home: child,
          );
        },
      ),
    );
  }
}
