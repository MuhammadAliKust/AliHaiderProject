import 'package:flutter/material.dart';

class MultiSelectionListViewDemo extends StatefulWidget {
  MultiSelectionListViewDemo({super.key});

  @override
  State<MultiSelectionListViewDemo> createState() =>
      _MultiSelectionListViewDemoState();
}

class _MultiSelectionListViewDemoState
    extends State<MultiSelectionListViewDemo> {
  List<int> selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Multi Selection List View Demo"),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, i) {
              return ListTile(
                onTap: () {
                  if (selectedIndex.contains(i)) {
                    selectedIndex.remove(i);
                  } else {
                    selectedIndex.add(i);
                  }

                  setState(() {});
                },
                leading: Icon(Icons.notifications),
                title: Text("Loop Index $i"),
                subtitle: Text("Selected Index: $selectedIndex"),
                trailing: Icon(Icons.arrow_forward_ios),
                tileColor:
                    selectedIndex.contains(i) ? Colors.blue : Colors.white,
              );
            }));
  }
}
