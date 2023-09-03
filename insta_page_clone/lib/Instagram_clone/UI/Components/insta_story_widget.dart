import 'package:flutter/material.dart';

import 'default_image_list.dart';

class InstaStoriesWidget extends StatelessWidget {
  const InstaStoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
            profileimage.length,
                (index) => Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                    const AssetImage("assets/images/insta_story.png"),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(profileimage[index]),
                    ),
                  ),
                  const Text(
                    "Profile Name",
                    style: TextStyle(fontSize: 12, color: Colors.black87),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
