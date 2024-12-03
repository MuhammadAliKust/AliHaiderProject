import 'package:ali_haider_project/bottom_bar.dart';
import 'package:ali_haider_project/bottom_sheet.dart';
import 'package:ali_haider_project/dialog_box.dart';
import 'package:ali_haider_project/dynamic_list_view_demo.dart';
import 'package:ali_haider_project/gridview_demo.dart';
import 'package:ali_haider_project/list_view_demo.dart';
import 'package:ali_haider_project/multi_selection_view.dart';
import 'package:ali_haider_project/page_view.dart';
import 'package:ali_haider_project/providers/user_provider.dart';
import 'package:ali_haider_project/screen_a.dart';
import 'package:ali_haider_project/single_selection_view.dart';
import 'package:ali_haider_project/tabbar_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => UserProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ScreenAView());
  }
}
