
import 'package:flutter/material.dart';

import 'default_snack_bar.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FloatingActionButton(
      onPressed: getXSnackBar,
      child: FittedBox(
          child: Text(
            "GetX SnackBar",
            style: TextStyle(fontSize: 23),
          )),
    );
  }
}
