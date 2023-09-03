import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  List<String> buttons = [
    "IGTV",
    "Travel",
    "Architecture",
    "Doctor",
    "Style",
    "Food",
    "Art",
    "Beauty",
    "DIY",
    "Music",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: TextFormField(
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.search),
                contentPadding: const EdgeInsets.all(6),
                hintText: "Search",
                filled: true,
                fillColor: const Color.fromRGBO(220, 220, 220, 1),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_add,
                    color: Colors.black,
                  ))
            ],
          ),
          SliverAppBar(
            title: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    buttons.length,
                    (index) => Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: OutlinedButton(
                              onPressed: () {}, child: Text(buttons[index])),
                        )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
