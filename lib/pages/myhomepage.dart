import 'package:flutter/material.dart';
import 'package:herrise_app/widgets/text.dart';
import 'package:herrise_app/widgets/search_bar.dart' as custom; // ✅ Import the SearchBar with alias
import 'package:herrise_app/widgets/icons.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 30),
            const custom.SearchBar(), // ✅ Use the aliased SearchBar
            const SizedBox(height: 20),
            Center(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "../assets/images/91236d7f-fb3f-4b80-ac09-ff6e1097686f.jpeg",
                    width: 500,
                    height: 400,
                  ),
                  const TextWidget(
                    displaytext: 'press 10 times to load our website',
                    styleVariant: 'title',
                    displayText: 'press 10 times to load our website',
                  ),
                  const TextWidget(
                    displaytext: '',
                    styleVariant: 'subtitle',
                    displayText: '',
                  ),
                  Text(
                    '$_counter',
                    style: const TextStyle(
                      fontSize: 36,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
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
       11-navigation
            Image.asset(
              "../assets/images/91236d7f-fb3f-4b80-ac09-ff6e1097686f.jpeg",
              width: 500,
              height: 400,
            ),

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
          main
            TextWidget(
              displaytext: 'press 10 times to load our website',
              styleVariant: 'title',
              displayText: 'press 10 times to load our website',
            ),
        11-navigation
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

            TextWidget(displaytext: '$_counter', styleVariant: 'subtitle', displayText: ''),
            Text(

            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),//Adjust the radius as needed
              child: Image.asset(
                '../assets/images/57dd9f12164251a3ada0db00e6e6cbe4.png',fit:BoxFit.cover, height:400, width:400)
            ),
            const SizedBox(height: 20), // Add some space between the image and the text
            TextWidget(displaytext: '$_counter', styleVariant: 'subtitle', displayText: 'Lempuyang Temple',),
             Text(
       main
              '$_counter',
              style: TextStyle(fontSize: 36, color: Colors.amber, fontWeight: FontWeight.bold),
        main
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
mixin y {
  // ignore: prefer_typing_uninitialized_variables
  var center;
}

// ignore: camel_case_types
class _counter {}
