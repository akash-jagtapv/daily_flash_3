/*
2. Create a Container in the Center of the screen, now in the background of the
   Container display an Image (the image can be an asset or network image).
   Also, display text in the center of the Container.
*/

import 'package:flutter/material.dart';

class Question2 extends StatelessWidget {
  const Question2({super.key});

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
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: Opacity(
                  opacity: 0.7,
                  child: Image.asset(
                    "asset/flutter_logo.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  "Hello, Flutter!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
