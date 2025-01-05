import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySliverAppBar({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return SliverAppBar(
      // ignore: deprecated_member_use
      expandedHeight: 300,
      collapsedHeight: 100,
      floating: false,
      pinned: true,
      actions: [
        //cart button
        IconButton(
          icon: const Icon(Icons.shopping_cart_outlined), 
          onPressed: () {  },
        ),
      ],
      // ignore: deprecated_member_use
      backgroundColor: theme.background,
      foregroundColor: theme.inversePrimary,
      title: const Text("Sunset Dinner"),
      centerTitle: true,
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(bottom:12.0),
        child: FlexibleSpaceBar(
          background: child,
          title: title,
          centerTitle: true,
          titlePadding: const EdgeInsets.only(left:0 ,right: 0 , top:0),
          expandedTitleScale: 1,
        ),
      ), // FlexibleSpaceBar
    ); // SliverAppBar
  }
}