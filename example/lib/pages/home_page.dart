import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final colors = AppTheme().colors(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
        actions: const [],
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Theme",
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
