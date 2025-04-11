import 'package:flutter/material.dart';
import 'package:herrise_app/widgets/text.dart';
import 'package:herrise_app/widgets/icons.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;  // Counter variable to track button presses

  void _incrementCounter() {
    setState(() {
      _counter++; // Increase the counter
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        6-icons
            // Step 2: Row to place icons side by side with circular borders around each
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Icon with circle border
                CircleAvatar(
                  radius: 30, // Adjust size of circle
                  backgroundColor: Colors.blue, // Circle color
                  child: Image.asset(AppIcons.hotel, width: 30, height: 30),
                ),
                SizedBox(width: 20), // Space between icons
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.orange,
                  child: Image.asset(AppIcons.man, width: 30, height: 30),
                ),
                SizedBox(width: 20),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.green,
                  child: Image.asset(AppIcons.monkey, width: 30, height: 30),
                ),
                SizedBox(width: 20),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.red,
                  child: Image.asset(AppIcons.nature, width: 30, height: 30),
                ),
                SizedBox(width: 20),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.purple,
                  child: Image.asset(AppIcons.vacations, width: 30, height: 30),
                ),
              ],
            ),
            // Additional Text Widgets and counter can stay here
            TextWidget(
              displaytext: 'press 10 times to load our website',
              styleVariant: 'title',
              displayText: 'press 10 times to load our website',
            ),
            TextWidget(displaytext: '$_counter', styleVariant: 'subtitle', displayText: ''),
            Text(

            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),//Adjust the radius as needed
              child: Image.asset(
                '../assets/images/57dd9f12164251a3ada0db00e6e6cbe4.png',fit:BoxFit.cover, height:400, width:400)
            ),
            const SizedBox(height: 20), // Add some space between the image and the text
            TextWidget(displaytext: '$_counter', styleVariant: 'subtitle', displayText: '',),
             Text(
       main
              '$_counter',
              style: TextStyle(fontSize: 36, color: Colors.amber, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
