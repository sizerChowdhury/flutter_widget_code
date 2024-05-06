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
          drawer: Drawer(
            child: Container(
              color: Colors.grey[300],
              child: ListView(
                children: [
                  DrawerHeader(
                      child: Center(
                    child: Text(
                      'source code of Flutter Widget',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
                  ListTile(
                    leading: Icon(
                      Icons.home,
                    ),
                    title: Text('Details page'),
                    onTap: () {
                      Navigator.pushNamed(context, '/details');
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.home,
                    ),
                    title: Text('TabPageSelector page'),
                    onTap: () {
                      Navigator.pushNamed(context, '/TabSelect');
                    },
                  )
                ],
              ),
            ),
          ),
          body: Column(children: [])),
    );
  }
}
