import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void mySnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Text Styling App'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Flutter Text Styling',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Text('Experiment with text styles',
                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
              TextButton(
                  onPressed: () {
                    mySnackBar('You clicked the button!', context);
                  },
                  child: const Text('Click Me')),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome to ', style: TextStyle(fontSize: 18),),
                  Text('Flutter!', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 18),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
