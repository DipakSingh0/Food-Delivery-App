import 'package:flutter/material.dart';
import 'package:food/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
     final TextEditingController textController = TextEditingController();
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Your location"),
              content: TextField(
                decoration:
                    const InputDecoration(hintText: 'Enter your address...'),
              ),
              actions: [
                //cancel button
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    textController.clear();

                  },
                  child: const Text('Cancel'),
                ),

                // save button
                MaterialButton(
                  onPressed: () {

                      // Get the Restaurant provider in a way that allows updates
              // final restaurantProvider = Provider.of<Restaurant>(context, listen: false); 

              // // Update the delivery address
              // restaurantProvider.updateDeliveryAddress(textController.text);
                 
                    // update delivery address
                    String newAddress = textController.text;
                    context
                        .read<Restaurant>()
                        .updateDeliveryAddress(newAddress);
                    Navigator.pop(context);
                    textController.clear();
                  },
                  child: const Text("Save"),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          Text(
            "Deliver Now",
            style: TextStyle(color: theme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Consumer<Restaurant>(
                  builder: (context, restaurant, child) => Text(
                    "6901 Hollywood Blv",
                    style: TextStyle(
                      color: theme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                //drop down menu
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
