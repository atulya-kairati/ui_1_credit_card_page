import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle({
    Key? key,
    required this.radius,
    required this.color,
  }) : super(key: key);

  final double radius;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
          color: color, shape: BoxShape.circle),
    );
  }
}
