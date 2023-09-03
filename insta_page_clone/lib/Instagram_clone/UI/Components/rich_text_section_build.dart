import 'package:flutter/material.dart';
import 'package:insta_page_clone/Instagram_clone/UI/Components/rich_text_widget.dart';

Column richtextbuildSection() {
  return  const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      RichTextWidget(),
      Text(
        "View all 12 comments ",
        style: TextStyle(color: Colors.black38),
      )
    ],
  );
}