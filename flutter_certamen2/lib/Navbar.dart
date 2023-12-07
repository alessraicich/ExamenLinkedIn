import 'package:flutter/material.dart';


class Navbar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onItemSelected;

  Navbar({
    required this.currentIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
        children: List.generate(5, (index) {
          
          IconData iconData;
          switch (index) {
            case 0:
              iconData = Icons.home;
              break;
            case 1:
              iconData = Icons.search;
              break;
            case 2:
              iconData = Icons.more;
              break;
            case 3:
              iconData = Icons.video_call;
              break;
            case 4:
              iconData = Icons.person;
            default:
              iconData = Icons.error; 
          }
          return IconButton(
            icon: Icon(iconData),
            color: currentIndex == index ? Colors.black : Colors.grey,
            onPressed: () => onItemSelected(index),
          );
        }),
     ),
);
}
}