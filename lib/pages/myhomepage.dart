import 'package:flutter/material.dart';
import 'package:herrise_app/widgets/text.dart';
import 'package:herrise_app/widgets/search_bar.dart' as custom; // ✅ Import the SearchBar with alias

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
