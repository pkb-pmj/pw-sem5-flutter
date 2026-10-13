import 'package:flutter/material.dart';

class const Task1({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      padding: const EdgeInsets.only(top: 50),
      color: Colors.yellow,
      child: Container(
        constraints: const BoxConstraints.expand(),
        padding: const EdgeInsets.only(left: 150),
        color: Colors.red,
        child: Align(
          child: Container(
            constraints: const BoxConstraints.expand(),
            color: Colors.green,
            child: Align(
              alignment: AlignmentGeometry.bottomRight,
              child: Container(color: Colors.blue, width: 70, height: 50),
            ),
          ),
        ),
      ),
    );
  }
}
