import 'package:flutter/material.dart';

class DefaultListTile extends StatelessWidget {
  const DefaultListTile(
      {super.key,
      required this.listTitle,
      required this.listSubTitle,
      required this.press});

  final String listTitle;
  final String listSubTitle;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(listTitle),
        subtitle: Text(listSubTitle),
        onTap: press,
      ),
    );
  }
}
