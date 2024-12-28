import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  final double height;
  final Color? color;

  const MyDivider({super.key, this.height = 1, this.color});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      color: color ?? Theme.of(context).dividerColor,
    );
  }
}
