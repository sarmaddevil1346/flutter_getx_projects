import 'package:flutter/material.dart';

import 'default_rich_text.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            style: const TextStyle(color: Colors.black),
            children: [
              buildTextSpan(
                "Liked by ",
              ),
              buildTextSpan(
                "Profile Name ",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              buildTextSpan(
                " and",
              ),
              buildTextSpan(
                " others",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            style: const TextStyle(color: Colors.black),
            children: [
              buildTextSpan(
                "Profile Name ",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              buildTextSpan(
                " This is a amazing picture on instagram.This is best of course on instagram ",
              ),

            ],
          ),
        ),
      ],
    );
  }
}
