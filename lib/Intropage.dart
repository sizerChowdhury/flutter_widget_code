import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Intro Page'),
          centerTitle: true,
          backgroundColor: Colors.grey[500],
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Go to detailspage'),
            onPressed: () {
              Navigator.pushNamed(context, '/details');
            },
          ),
        ),
      ),
    );
  }
}
