import 'package:flutter/material.dart';

void main() {
  runApp(SliderPage());
}

class SliderPage extends StatefulWidget {
  SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double cnt = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: Text('Slider'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${cnt.toInt()}'),
            SizedBox(
              height: 20,
            ),
            Slider(
              value: cnt,
              min: 0,
              max: 100,
              //divisions: 9,
              //label: 'hello',
              onChanged: (value) {
                setState(() {
                  cnt = value;
                });
              },
              activeColor: Colors.red,
              inactiveColor: Colors.green,
              thumbColor: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
