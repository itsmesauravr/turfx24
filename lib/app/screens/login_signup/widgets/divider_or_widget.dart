import 'package:flutter/material.dart';

class DividerOrWidget extends StatelessWidget {
  const DividerOrWidget({
    super.key,
    required this.height,
    required this.width,
    required this.thickness,
    required this.color,
  });

  final double height;
  final double width;
  final double thickness;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Divider(
        thickness: thickness,
        color: color,
      ),
    );
  }
}
