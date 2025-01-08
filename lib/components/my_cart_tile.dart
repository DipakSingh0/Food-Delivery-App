import 'package:flutter/material.dart';
import 'package:food/components/my_quantity_selector.dart';
import 'package:food/models/cart_items.dart';
import 'package:food/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ), // BoxDecoration

        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            // food image
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      cartItem.food.imagePath,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  Column(
                    children: [
                      // name and price
                      Text(cartItem.food.name),

                      Text('\$${cartItem.food.price}', style: TextStyle(
                        color: theme.primary,
                      )),


                      const SizedBox(height: 12,),

                       MyQuantitySelector(
                      quantity: cartItem.quantity,
                      food: cartItem.food,
                      onIncrement: () {
                        restaurant.removeFromCart(cartItem);
                      },
                      onDecrement: () {
                        restaurant.addToCart(
                            cartItem.food, cartItem.selectedAddons);
                      }),
                    ],
                  ),

                  const Spacer(),
                  // increment or decrement quantity
                  // MyQuantitySelector(
                  //     quantity: cartItem.quantity,
                  //     food: cartItem.food,
                  //     onIncrement: () {
                  //       restaurant.removeFromCart(cartItem);
                  //     },
                  //     onDecrement: () {
                  //       restaurant.addToCart(
                  //           cartItem.food, cartItem.selectedAddons);
                  //     }),
                ],
              ),
            ),

            // Addons
            // Addons section
            SizedBox(
              height: cartItem.selectedAddons.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10, bottom: 10 , right: 10),
                children: cartItem.selectedAddons
                    .map((addon) => Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: FilterChip(
                            label: Row(
                              children: [
                                // addon name
                                Text(addon.name),
                      
                                // addon price
                                Text('\$${addon.price}'),
                              ],
                            ),
                            shape: StadiumBorder(
                                side: BorderSide(
                              color: theme.primary,
                            )),
                            backgroundColor: theme.secondary,
                            labelStyle: TextStyle(
                              color: theme.inversePrimary,
                              fontSize: 12,
                            ),
                            onSelected: (value) {},
                          ),
                    ))
                    .toList(),
              ),
            ),
            // SizedBox(
            //   height: cartItem.selectedAddons.isEmpty? 0:60,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: cartItem.selectedAddons
            //     .map(
            //       (addon) => FilterChip(label: Row(children: [

            //       ],), onSelected: (value){

            //       })
            //     )
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
