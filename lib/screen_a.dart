import 'package:ali_haider_project/providers/user_provider.dart';
import 'package:ali_haider_project/screen_b.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenAView extends StatelessWidget {
  ScreenAView({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              userProvider.setName('Ali Haider');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScreenBView()));
            },
            child: Text("Go to Screen B")),
      ),
    );
  }
}
