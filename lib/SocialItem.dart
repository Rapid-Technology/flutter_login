import 'package:flutter/material.dart';

class SocialItem extends StatelessWidget {
  String image;

  SocialItem({this.image});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        child: InkWell(
          splashColor: Colors.green[700],
          child: Padding(
            padding: const EdgeInsets.all(
              15,
            ),
            child: Image.asset(
              image,
              height: 30.0,
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
