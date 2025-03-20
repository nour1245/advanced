import 'package:advanced/core/themeing/colors.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class HomeScreenNavigationBar extends StatelessWidget {
  const HomeScreenNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      animationCurve: Curves.fastOutSlowIn,
      backgroundColor: ColorsManager.getMainBlue(context),
      items: [
        CurvedNavigationBarItem(child: Icon(Icons.home)),
        CurvedNavigationBarItem(child: Icon(Icons.message)),
        CurvedNavigationBarItem(child: Icon(Icons.search)),
        CurvedNavigationBarItem(child: Icon(Icons.date_range)),
        CurvedNavigationBarItem(child: Icon(Icons.person)),
      ],
      onTap: (index) {
        // Handle button tap
      },
    );
  }
}
