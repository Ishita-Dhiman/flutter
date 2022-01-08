import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child:
            Text("I am Rich"),
          ),
        ),
        body: Center(
         child: Image(
           image: AssetImage('images/download.jfif'),
         ),
        ),
        ),

  )
  );
}

