import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Icon(Icons.notifications),
          Icon(Icons.logout),
        ],
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                label: Text("Email"),
                hintText: 'test@gmail.com',
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.email)),
            keyboardType: TextInputType.emailAddress,
            maxLines: 1,
          ),
          TextField(
            decoration: InputDecoration(
                label: Text("Password"),
                hintText: 'Password must be 6 or more characters.',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility)),
            keyboardType: TextInputType.emailAddress,
            obscureText: true,
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Login"))
        ],
      ),
    );
  }
}
