import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 45, 17, 95),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    ),
  );
}
