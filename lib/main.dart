import 'package:flutter/material.dart';

void main() {
  // Company name widget
  var companyNameDecoration = BoxDecoration(
      // color: Colors.green,
      border: Border.all(color: Colors.lightBlueAccent, width: 10),
      borderRadius: BorderRadius.circular(50));
  var companyNameWidget = Container(
      alignment: Alignment.center,
      decoration: companyNameDecoration,
      margin: const EdgeInsets.symmetric(horizontal: 500),
      height: 100,
      child: const Text(
        "LLC",
        style: TextStyle(color: Colors.blueGrey, fontSize: 72),
      ));

  // Survey question widget
  var questionWidget = const Text('Question',
      style: TextStyle(color: Colors.green, fontSize: 72));

  // Thumbs widget
  const double iconSize = 50.0;
  const iconThumbsUp = Icon(
    Icons.thumb_up,
    color: Colors.green,
    size: iconSize,
  );
  const iconThumbsDown = Icon(
    Icons.thumb_down,
    color: Colors.red,
    size: iconSize,
  );

  var thumbsWidget = const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [iconThumbsUp, iconThumbsDown]);

  runApp(MaterialApp(
      home: Scaffold(
          body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [companyNameWidget, questionWidget, thumbsWidget]))));
}
