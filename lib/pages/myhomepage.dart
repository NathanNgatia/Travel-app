import 'package:flutter/material.dart';
import 'package:herrise_app/widgets/text.dart';
import 'package:herrise_app/pages/booking_page.dart';  // Import the second page

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
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      // Navigate to the second page when the image is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BookingPage()),
                      );
                    },
                    child: Image.asset(
                      "assets/images/91236d7f-fb3f-4b80-ac09-ff6e1097686f.jpeg",  // Ensure the image path is correct
                      width: 500,
                      height: 400,
                    ),
                  ),
                  TextWidget(
                    displayText: 'press 10 times to load our website',
                    styleVariant: 'title', displaytext: '',
                  ),
                  TextWidget(
                    displayText: '$_counter',
                    styleVariant: 'subtitle', displaytext: '',
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
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
