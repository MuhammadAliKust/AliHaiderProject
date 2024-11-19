import 'package:flutter/material.dart';

class GridviewDemo extends StatelessWidget {
  const GridviewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View Demo"),
      ),
      body: GridView.builder(
          itemCount: 13,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5, crossAxisSpacing: 20, mainAxisSpacing: 10),
          itemBuilder: (context, i) {
            return const FlutterLogo();
          }),
    );
  }
}
