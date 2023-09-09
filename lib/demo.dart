import 'package:flutter/material.dart';

void main() {
  const double iconSize = 100.0;

  // Check icon
  var myDecoration = BoxDecoration(
      color: Colors.green,
      border: Border.all(color: Colors.black, width: 5),
      borderRadius: BorderRadius.circular(iconSize));
  const myMargin = EdgeInsets.all(50);
  const myPadding = EdgeInsets.all(10);
  var containerCheckIcon = Container(
      alignment: Alignment.center,
      decoration: myDecoration,
      margin: myMargin,
      padding: myPadding,
      child: const Icon(
        Icons.check,
        color: Colors.red,
        size: iconSize,
      ));
  // Icons row
  const icon1 = Icon(
    Icons.looks_one,
    color: Colors.red,
    size: iconSize,
  );
  const icon2 = Icon(
    Icons.looks_two,
    color: Colors.grey,
    size: iconSize,
  );
  // Title
  const bigRedStyle = TextStyle(color: Colors.red, fontSize: 36);
  var myTransform = Matrix4.skewX(-0.45);
  const helloWorldText = Text('Hello World!', style: bigRedStyle);
  var containerTitle = Container(
      alignment: Alignment.center,
      transform: myTransform,
      child: helloWorldText);
  var rowCheckIcon = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [containerCheckIcon],
  );
  const rowNumberIcons = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [icon1, icon2],
  );
  var columnMain = Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [containerTitle, rowCheckIcon, rowNumberIcons],
  );
  runApp(MaterialApp(
      home: Scaffold(backgroundColor: Colors.amber, body: columnMain)));
}
