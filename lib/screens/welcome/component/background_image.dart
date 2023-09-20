import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.8,
      child: Image.asset(
        "assets/images/login bg.png",
        fit: BoxFit.fill,
      ),
    );
  }
}
