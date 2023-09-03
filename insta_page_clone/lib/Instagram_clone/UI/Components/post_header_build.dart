import 'package:flutter/material.dart';

import 'default_image_list.dart';

Row postheaderRow(int index) {
  return Row(
    children: [
      CircleAvatar(
        radius: 30,
        backgroundColor: Colors.transparent,
        backgroundImage: const AssetImage("assets/images/insta_story.png"),
        child: CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(profileimage[index]),
        ),
      ),
      const Text(
        "Profile Name",
        style: TextStyle(fontSize: 12, color: Colors.black87),
      ),
      const Spacer(),
      IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
    ],
  );
}
