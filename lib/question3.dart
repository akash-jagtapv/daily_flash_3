/*
3. Add a container in the corner of the screen with a size (width: 200, 
   height: 200). Give a red border to the container. Now when the user taps
   the container change the color of the border to green.
*/

import 'package:flutter/material.dart';

class Question3 extends StatefulWidget {
  const Question3({super.key});
  @override
  State createState() => _Question3State();
}

class _Question3State extends State<Question3> {
  Color _borderColor = Colors.red;

  void _changeBorderColor() {
    setState(() {
      _borderColor = _borderColor == Colors.red ? Colors.green : Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daily Flash 3",
        ),
      ),
      body: Center(
        child: Stack(
          children: [
            GestureDetector(
              onTap: _changeBorderColor,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: _borderColor,
                    width: 5.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    "Tap",
                    style: TextStyle(
                      fontSize: 20,
                      color: _borderColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
