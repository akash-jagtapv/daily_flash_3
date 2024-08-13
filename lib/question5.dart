/*
4. Create a Circular Container and give the container 2 colors i.e., red and 
   blue. 50% of the container must contain red and the other 50% must contain
   blue color. 
   (The transition from the red color to 
   blue must be sharp).
*/

import 'package:flutter/material.dart';

class Question5 extends StatelessWidget {
  const Question5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daily Flash 5",
        ),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.blue,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [
                0.5,
                0.5,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
