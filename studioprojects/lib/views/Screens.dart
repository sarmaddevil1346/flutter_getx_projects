import 'package:flutter/material.dart';
import 'components/floating_action_button.dart';
import 'components/get_bottom_sheet.dart';
import 'components/get_dialouge_box.dart';
import 'components/get_media_query.dart';
import 'components/get_navigators.dart';
import 'components/passing_data_to_next_screen.dart';
import 'components/passing_data_with_routes.dart';
import 'components/routes.dart';

class IntroGetX extends StatelessWidget {
  const IntroGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX All Implementation"),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              DialogueBox(),
              GetXBottomSheet(),
              Navigators(),
              PassingDataToNextScreen(),
              Routes(),
              PassingDataWithRoutesToNextScreen(),
              MediaQueryHeightWidth(),
              SnackBarScreen()
            ],
          ),
        ),
      ),
      floatingActionButton: const FloatingActionButtonWidget(),
    );
  }
}
