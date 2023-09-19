import 'package:flutter/material.dart';

import '../../../component/icon_container.dart';
import '../../../const.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IconContainer(),
        const Spacer(),
        Text("Account History", style: pageHeading),
        const Spacer(flex: 2),
      ],
    );
  }
}
