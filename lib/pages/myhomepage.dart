import 'package:flutter/material.dart';
import 'package:herrise_app/widgets/text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // Declare _counter

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // Add the Drawer widget here
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Navigation Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // You can navigate to other screens here
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                // Handle profile navigation here
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Handle settings navigation here
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "../assets/images/91236d7f-fb3f-4b80-ac09-ff6e1097686f.jpeg",
              width: 500,
              height: 400,
            ),
            TextWidget(
              displaytext: 'press 10 times to load our website',
              styleVariant: 'title',
              displayText: 'press 10 times to load our website',
            ),
            TextWidget(
              displaytext: '$_counter',
              styleVariant: 'subtitle',
              displayText: '',
            ),
            Text(
              '$_counter',
              style: TextStyle(
                  fontSize: 36,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

mixin y {
  // ignore: prefer_typing_uninitialized_variables
  var center;
}

// ignore: camel_case_types
class _counter {}


