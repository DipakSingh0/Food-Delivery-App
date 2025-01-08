import 'package:flutter/material.dart';
import 'package:food/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 25.0, right: 25, bottom: 25, top: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Thank you for your order!"),
              const SizedBox(
                height: 25,
              ),
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: theme.secondary),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(25),
                  // child: Text("Receipt here..."),
                  child: Consumer<Restaurant>(
                    builder: (context, restaurant, child) =>
                        Text(restaurant.displayCartReceipt()),
                  )),
              const SizedBox(
                height: 25,
              ),
              const Text("Estimated Delivery time is 2:10 PM."),
            ],
          ),
        ),
      ),
    );
  }
}
