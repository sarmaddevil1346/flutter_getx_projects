import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../GetXController/favourite_controller.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  FavouriteController favouriteController = FavouriteController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: favouriteController.names.length,
              itemBuilder: (context, index) {
                return Obx(() => ListTile(
                      onTap: () {
                        if (favouriteController.emptyFavourite.contains(
                          favouriteController.names[index].toString(),
                        )) {
                          favouriteController.removeListValues(
                            favouriteController.names[index].toString(),
                          );
                        } else {
                          favouriteController.addListValues(
                            favouriteController.names[index].toString(),
                          );
                        }
                      },
                      title: Text(
                        favouriteController.names[index].toString(),
                      ),
                      trailing: Icon(
                        Icons.favorite,
                        color: favouriteController.emptyFavourite.contains(
                                favouriteController.names[index].toString())
                            ? Colors.red
                            : Colors.white,
                      ),
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}
