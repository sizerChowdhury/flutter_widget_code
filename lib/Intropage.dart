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
          body: Column(
            children: [
              ElevatedButton(
                child: Text('Go to detailspage'),
                onPressed: () {
                  Navigator.pushNamed(context, '/details');
                },
              ),
              SizedBox(height: 20, width: 20),
              ElevatedButton(
                child: Text('Go to tabpaseselector'),
                onPressed: () {
                  Navigator.pushNamed(context, '/TabSelect');
                },
              ),
            ],
          )),
    );
  }
}
