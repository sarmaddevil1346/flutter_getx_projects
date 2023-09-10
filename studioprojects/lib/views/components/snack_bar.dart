import 'package:flutter/material.dart';

import 'default_list_tile.dart';
import 'default_snack_bar.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultListTile(
        listTitle: "GetX SnackBar",
        listSubTitle: "Do you want to show SnackBar",
        press:  getXSnackBar
    );
  }
}
