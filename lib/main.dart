import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromARGB(225, 63, 5, 120),
          body: GradientContainer(Color.fromARGB(255, 74, 35, 143), Color.fromARGB(255, 171, 155, 216))),
    ),
  );
}


