import 'package:flutter/material.dart';

double min(double a, double b) => a < b ? a : b;

class const Task1({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          constraints: const BoxConstraints.expand(),
          padding: const EdgeInsets.only(top: 50),
          color: Colors.yellow,
          child: Container(
            constraints: const BoxConstraints.expand(),
            padding: constraints.maxWidth > 300
                ? EdgeInsets.only(left: min(150, constraints.maxWidth / 4))
                : EdgeInsets.only(top: constraints.maxHeight / 3),
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
      },
    );
  }
}
