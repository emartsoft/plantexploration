import 'package:flutter/material.dart';

class AvatarImage extends StatelessWidget {
  AvatarImage({this.imageName});

  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.0,
      height: 45.0,
      decoration: new BoxDecoration(
        color: const Color(0xff7c94b6),
        image: DecorationImage(
          image: ExactAssetImage('images/$imageName'),
          fit: BoxFit.cover,
        ),
        borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
        border: new Border.all(
          color: Colors.green,
          width: 3.0,
        ),
      ),
    );
  }
}
