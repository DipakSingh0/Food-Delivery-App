import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({
    required this.tabController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabs: [
        // 1st tab
        Tab(
          icon: Icon(Icons.home),
        ),
        // 2nd tab
        Tab(
          icon: Icon(Icons.settings),
        ),
        // 3rd tab
        Tab(
          icon: Icon(Icons.person),
        ),
      ],
    );
  }
}