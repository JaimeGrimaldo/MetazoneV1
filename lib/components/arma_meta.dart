import 'package:flutter/material.dart';

import 'nav_bar.dart';

class AmmoMeta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: [
            NavBarrInfer(),
          ],
        ),
      ],
    );
  }
}
