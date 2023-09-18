import 'package:flutter/material.dart';

class BackGroundImage extends StatelessWidget {
  const BackGroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/map.png',
      fit: BoxFit.fill,
    );
  }
}
