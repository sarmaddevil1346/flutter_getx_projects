import 'package:flutter/material.dart';
import 'Components/app_bar.dart';
import 'Components/insta_story_widget.dart';
import 'Components/post_section_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Future<void> onRefresh() async {
      await Future.delayed(const Duration(seconds: 3));
    }

    return Scaffold(
      appBar: buildAppBar(),
      body: RefreshIndicator(
        onRefresh: () => onRefresh(),
        child: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InstaStoriesWidget(),
              PostSectionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
