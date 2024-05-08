import 'package:flutter/material.dart';
import 'Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashPage(),
    );
  }
}

class SplashPage extends StatelessWidget {
  
  const SplashPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    List<String> images = [  
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",  
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",  
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",  
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"  
  ];  
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        /* body: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: ListView(
            children: [
              const SizedBox(height: 25),
              Container(
                color: Colors.white,
                alignment: Alignment.center,
                child: Image.asset("images/logo2.png"),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffeb448c),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: const Size(50, 50),
                ),
                child: const Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
            ],
          ),
        ), */

        /*body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // number of items in each row
            mainAxisSpacing: 8.0, // spacing between rows
            crossAxisSpacing: 8.0, // spacing between columns
            ),
            padding: const EdgeInsets.all(8.0), // padding around the grid
            itemCount: images.length, // total number of items
            itemBuilder: (context, index) {
              return Container(
                color: Colors.blue, // color of grid items
                child: Center(
                  child: Text(
                    images[index],
                    style: const TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                    ),
                    );
                    },
                    ), */
          body: GridView.extent(
            maxCrossAxisExtent: 200.0, // maximum item width
            mainAxisSpacing: 8.0, // spacing between rows
            crossAxisSpacing: 8.0, // spacing between columns
            padding: const EdgeInsets.all(8.0), // padding around the grid
            children: images.map((item) {
              return Container(
                color: Colors.blue, // color of grid items
                child: Center(
                  child: Text(
                    item,
                    style: const TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                    ),
                    );
                    }).toList(),
                    )
      ),
    );
  }
}
