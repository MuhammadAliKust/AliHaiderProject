import 'package:ali_haider_project/dynamic_list_view_demo.dart';
import 'package:ali_haider_project/gridview_demo.dart';
import 'package:ali_haider_project/list_view_demo.dart';
import 'package:ali_haider_project/multi_selection_view.dart';
import 'package:ali_haider_project/page_view.dart';
import 'package:ali_haider_project/single_selection_view.dart';
import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridviewDemo()
    );
  }
}
