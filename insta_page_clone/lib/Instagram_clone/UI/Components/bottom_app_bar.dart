import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatefulWidget {
  const BottomAppBarWidget({super.key});

  @override
  State<BottomAppBarWidget> createState() => _BottomAppBarWidgetState();
}
int currentpage = 0;
class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        const Spacer(),
        IconButton(
            onPressed: () {
              setState(() {
                currentpage = 0;
              });
            },
            icon: Icon(
              Icons.home,
              color: currentpage == 0
                  ? const Color.fromRGBO(203, 72, 101, 1)
                  : const Color.fromRGBO(40, 40, 40, 1),
            )),
        const Spacer(),
        IconButton(
            onPressed: () {
              setState(() {
                currentpage = 1;
              });
            },
            icon:  Icon(
              Icons.search,
              color: currentpage == 1
                  ? const Color.fromRGBO(203, 72, 101, 1)
                  : const Color.fromRGBO(40, 40, 40, 1),
            )),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_collection_rounded)),
        const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.card_travel)),
        const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        const Spacer(),
      ],
    );
  }
}
