/*
1. Create a Container in the Center of the Screen with size(width: 300,
   height: 300) and display an image in the center of the container. Apply
   appropriate padding to the container.
*/

import "package:flutter/material.dart";

class Question1 extends StatelessWidget {
  const Question1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daily Flash 3",
        ),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Image.asset(
            "asset/flutter_logo.png",
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
