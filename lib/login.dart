import 'package:flutter/material.dart';
import 'home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0.0,
            title: Text(
              "Sign In",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Color(0xffcc96ab)),
            ),
          ),
          body: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              child: ListView(
                children: [
                  const SizedBox(height: 50),
                  Text("Welcome Back",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(color: Color(0xffcc96ab))),
                  const SizedBox(height: 60),
                  TextFormField(
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: const EdgeInsets.symmetric(vertical: 5),
                      label: const Text(
                        "Email",
                        style: TextStyle(color: Color(0xffeb448c)),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: const EdgeInsets.symmetric(vertical: 5),
                      label: const Text(
                        "password",
                        style: TextStyle(color: Color(0xffeb448c)),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: Text(
                      "Forgot Password!",
                      textAlign: TextAlign.right,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Color(0xffcc96ab)),
                    ),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffeb448c)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text(
                      "Sign in",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: Text(
                      "Sign in with Google",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Color(0xffcc96ab)),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: Text(
                      " New User",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Color(0xffcc96ab)),
                    ),
                  ),
                ],
              ))),
    );
  }
}
