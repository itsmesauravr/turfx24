import 'package:flutter/material.dart';

class EclipsePosition extends StatelessWidget {
  const EclipsePosition({
    super.key,
    this.top,
    this.bottom,
    this.right,
    this.left,
    required this.image,
  });

  final double? top;
  final double? bottom;
  final double? right;
  final double? left;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      right: right,
      left: left,
      child: Image.asset(image),
    );
  }
}
