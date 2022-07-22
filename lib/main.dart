import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 37, 182, 51),
          leading: IconButton(
            icon: Icon(Icons.ac_unit),
            onPressed: () {
              print('clicked');
            },
          ),
          title: const Text('Application'),
        ),
        body: Center(
          child: const Text.rich(TextSpan(text: 'Hi', children: [
            TextSpan(
                text: ' Minh Tan',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 39, 153, 39))),
            TextSpan(
              text: ', How are you?',
            )
          ])),
        ));
  }
}
