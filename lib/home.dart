import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            10,
            (index) {
              return Container(
                color: Colors.blue,
                margin: const EdgeInsets.all(10),
                child: const Center(
                  child: Text(
                    "Item ",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 22,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
