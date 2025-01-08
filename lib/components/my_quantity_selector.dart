import 'package:flutter/material.dart';
import 'package:food/models/food.dart';

class MyQuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const MyQuantitySelector(
      {super.key,
      required this.quantity,
      required this.food,
      required this.onIncrement,
      required this.onDecrement});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: theme.background,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Increase button
          GestureDetector(
              onTap: onIncrement,
              child: Icon(
                Icons.remove,
                size: 20,
                color: theme.primary,
              )),

          //quantity scount
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
                width: 20, child: Center(child: Text(quantity.toString()))),
          ),
          // decrease button
          GestureDetector(
              onTap: onDecrement,
              child: Icon(
                Icons.add,
                size: 20,
                color: theme.primary,
              )),
        ],
      ),
    );
  }
}
