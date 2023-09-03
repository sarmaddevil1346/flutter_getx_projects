import 'package:flutter/material.dart';
import 'package:insta_page_clone/Instagram_clone/UI/seach_bar.dart';

import 'Components/bottom_app_bar.dart';
import 'home_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentpage==1 ?  SearchPage() : const HomePage(),
      bottomNavigationBar: const BottomAppBar(
        child: BottomAppBarWidget(),
      ),
    );
  }

}
