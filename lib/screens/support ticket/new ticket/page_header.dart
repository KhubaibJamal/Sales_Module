import 'package:flutter/material.dart';

import '../../../component/icon_container.dart';
import '../../../const.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      // leading: const IconContainer(),
      title: Row(
        children: [
          const IconContainer(),
          const Spacer(),
          Text("Support Ticket", style: pageHeading),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
