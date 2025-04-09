import 'package:flutter/material.dart';
import 'package:herrise_app/widgets/text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {
     
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
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),//Adjust the radius as needed
              child: Image.asset(
                '../assets/images/57dd9f12164251a3ada0db00e6e6cbe4.png',fit:BoxFit.cover, height:400, width:400)
            ),
            const SizedBox(height: 20), // Add some space between the image and the text
            TextWidget(displaytext: '$_counter', styleVariant: 'subtitle', displayText: '',),
             Text(
              '$_counter',
              style: TextStyle(fontSize:36,color: Colors.amber,fontWeight: FontWeight.bold),),
            
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
class _counter {
}

