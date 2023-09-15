import 'package:flutter/material.dart';

import '../../../component/icon_container.dart';
import '../../../const.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IconContainer(),
        const Spacer(),
        Text("Visit History", style: pageHeading),
        const Spacer(flex: 2),
      ],
    );
  }
}
