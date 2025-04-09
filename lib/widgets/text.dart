import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.displayText,
    required this.styleVariant, required String displaytext,
  });
  final String displayText;
  final String styleVariant;
  
  @override
  Widget build(BuildContext context) {
    style(styleVariant){
      switch (styleVariant) {
        case 'title':
          return TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black);
          case 'subtitle':
          return TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);
          default:
          return TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.black);
    }
    
  }
  return Text(
      displayText,
      style: style(styleVariant),
    );
  }}