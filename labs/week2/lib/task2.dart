import 'package:flutter/material.dart';

class const Task2({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth / 2,
          height: constraints.maxHeight / 2,
          color: Colors.red,
          child: OverflowBox(
            minWidth: 0,
            maxWidth: double.infinity,
            minHeight: 0,
            maxHeight: double.infinity,
            alignment: AlignmentGeometry.topLeft,
            child: Container(
              width: constraints.maxWidth * 3 / 4,
              height: constraints.maxHeight * 3 / 4,
              alignment: AlignmentGeometry.bottomRight,
              child: Container(
                width: constraints.maxWidth / 4,
                height: constraints.maxHeight / 4,
                color: Colors.red,
                child: OverflowBox(
                  minWidth: 0,
                  maxWidth: double.infinity,
                  minHeight: 0,
                  maxHeight: double.infinity,
                  alignment: AlignmentGeometry.topLeft,
                  child: Container(
                    width: constraints.maxWidth * 3 / 8,
                    height: constraints.maxHeight * 3 / 8,
                    alignment: AlignmentGeometry.bottomRight,
                    child: Container(
                      width: constraints.maxWidth / 8,
                      height: constraints.maxHeight / 8,
                      color: Colors.red,
                      child: OverflowBox(
                        minWidth: 0,
                        maxWidth: double.infinity,
                        minHeight: 0,
                        maxHeight: double.infinity,
                        alignment: AlignmentGeometry.topLeft,
                        child: Container(
                          width: constraints.maxWidth * 3 / 16,
                          height: constraints.maxHeight * 3 / 16,
                          alignment: AlignmentGeometry.bottomRight,
                          child: Container(
                            width: constraints.maxWidth / 16,
                            height: constraints.maxHeight / 16,
                            color: Colors.red,
                            child: OverflowBox(
                              minWidth: 0,
                              maxWidth: double.infinity,
                              minHeight: 0,
                              maxHeight: double.infinity,
                              alignment: AlignmentGeometry.topLeft,
                              child: Container(
                                width: constraints.maxWidth * 3 / 32,
                                height: constraints.maxHeight * 3 / 32,
                                alignment: AlignmentGeometry.bottomRight,
                                child: Container(
                                  width: constraints.maxWidth / 32,
                                  height: constraints.maxHeight / 32,
                                  color: Colors.red,
                                  child: OverflowBox(
                                    minWidth: 0,
                                    maxWidth: double.infinity,
                                    minHeight: 0,
                                    maxHeight: double.infinity,
                                    alignment: AlignmentGeometry.topLeft,
                                    child: Container(
                                      width: constraints.maxWidth * 3 / 64,
                                      height: constraints.maxHeight * 3 / 64,
                                      alignment: AlignmentGeometry.bottomRight,
                                      child: Container(
                                        width: constraints.maxWidth / 64,
                                        height: constraints.maxHeight / 64,
                                        color: Colors.red,
                                        child: OverflowBox(
                                          minWidth: 0,
                                          maxWidth: double.infinity,
                                          minHeight: 0,
                                          maxHeight: double.infinity,
                                          alignment: AlignmentGeometry.topLeft,
                                          child: Container(
                                            width:
                                                constraints.maxWidth * 3 / 128,
                                            height:
                                                constraints.maxHeight * 3 / 128,
                                            alignment:
                                                AlignmentGeometry.bottomRight,
                                            child: Container(
                                              width: constraints.maxWidth / 128,
                                              height:
                                                  constraints.maxHeight / 128,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
