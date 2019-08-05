
import 'package:flutter/material.dart';

class MidImage extends StatelessWidget {
  MidImage({ this.imageName, this.height, this.width });

  final double height;
  final double width;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Center(
          child: Image.asset(
            'images/$imageName',
            width: width,
            height: height,
            fit: BoxFit.cover,
          ),
        ),
    );
  }
}
