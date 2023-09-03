
import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    super.key,
    required this.iconData,
    required this.voidCallback,
  });
  final IconData iconData;
  final VoidCallback voidCallback;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: voidCallback,
      icon: Icon(
        iconData,
        color: Colors.black,
      ),
    );
  }
}
