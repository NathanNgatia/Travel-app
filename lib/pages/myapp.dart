import 'package:flutter/material.dart';
import 'package:herrise_app/pages/myhomepage.dart';
import 'package:herrise_app/utilities/globals.dart' as global;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(title:global.appName),
    );
  }
}