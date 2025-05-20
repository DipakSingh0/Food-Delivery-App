import 'package:flutter/material.dart';
import 'package:food/models/food.dart';

class FoodTile extends StatelessWidget {
  final void Function()? onTap;
  final Food food;

  const FoodTile({
    super.key,
    required this.food,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            // text food details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(food.name , style: TextStyle(fontSize: 22),),
                  Text('\$${food.price}', 
                  style: TextStyle(
                    // color: theme.primary,
                    fontSize: 15
                  )),
                  Text(food.description , 
                     style: TextStyle(
                    color: theme.inversePrimary,
                  )),
                  const Divider(),
                ],
              ),
            ),

            const SizedBox(width: 15),
            
            // food image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(food.imagePath, height: 120,)),
          
          Divider(
            color: theme.tertiary,
            endIndent: 25,
            indent: 25,
          ),
          ],
        ),

      ),
    );
  }
}