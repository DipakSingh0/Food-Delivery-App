import 'package:flutter/material.dart';
import 'package:food/components/my_button.dart';
import 'package:food/components/my_cart_tile.dart';
import 'package:food/models/restaurant.dart';
import 'package:food/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      //cart
      final userCart = restaurant.cart;

      //scaffold UI
      return Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
          backgroundColor: Colors.transparent,
          foregroundColor: theme.inversePrimary,
          centerTitle: true,
          actions: [
            //clear all the cart tiems
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Are you sure you want to clear the cart?"),
                    actions: [
                      // cancel button
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Cancel"),
                      ),

                      // yes button
                      TextButton(
                        onPressed: () {
                          // Logic to clear the cart here
                          Navigator.pop(context);
                          restaurant.clearCart();
                        },
                        child: const Text("Yes"),
                      ),
                    ],
                  ),
                );
              },
              icon: Icon(Icons.delete),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty
                      ? const Expanded(
                          child: Center(child: Text('Your Cart is empty...')))
                      : Expanded(
                          child: ListView.builder(
                              itemCount: userCart.length,
                              itemBuilder: (context, index) {
                                // get indivuidual cart item
                                final cartItem = userCart[index];

                                // return cart tile ui
                                return MyCartTile(cartItem: cartItem);
                                // return ListTile(
                                //   title: Text(cartItem.food.name),
                                // );
                              })),
                ],
              ),
            ),

            //payment button
            MyButton(
                text: "Go To Checkout",
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PaymentPage()))),

            const SizedBox(height: 25),
          ],
        ),
      );
    });
  }
}
