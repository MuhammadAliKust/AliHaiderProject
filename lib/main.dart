import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "First App",
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          actions: [
            const Icon(Icons.notifications),
            const Icon(Icons.shopping_cart),
            const Icon(Icons.person),
          ],
        ),
        body: SingleChildScrollView(
          child: const Column(
            children: [
              Text(
                "First Text",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 230,
              ),
              Text(
                "Second Text",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 230,
              ),
              Text(
                "Second Text",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 230,
              ),
              Text(
                "Second Text",
                style: TextStyle(fontSize: 30),
              ),
              // Text("Third Text",style: TextStyle(fontSize: 30),),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
