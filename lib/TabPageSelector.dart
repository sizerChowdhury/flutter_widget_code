import 'package:flutter/material.dart';

void main() {
  runApp(TabSelectorPage());
}

class TabSelectorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab Page Selector Example'),
            centerTitle: true,
            backgroundColor: Colors.lightBlue,
            bottom: TabBar(
              tabs: [
                Tab(text: 'Tab 1'),
                Tab(text: 'Tab 2'),
                Tab(text: 'Tab 3'),
              ],
              indicatorColor:
                  Colors.white, // Set the color of the selected tab indicator
              labelColor: Colors.red, // Set the color of the selected tab label
              unselectedLabelColor:
                  Colors.black, // Set the color of the unselected tab labels
              indicatorWeight: 5.0,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 1.0),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blue, Colors.green], // Gradient colors
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('Tab 1 Content')),
              Center(child: Text('Tab 2 Content')),
              Center(child: Text('Tab 3 Content')),
            ],
          ),
          bottomNavigationBar: Padding(
            padding: EdgeInsets.all(16.0),
            child: TabPageSelector(), // TabPageSelector widget
          ),
        ),
      ),
    );
  }
}
