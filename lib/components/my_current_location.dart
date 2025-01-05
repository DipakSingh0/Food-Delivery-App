import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Your location"),
              content: TextField(
                decoration:
                    const InputDecoration(hintText: 'Saearch your location'),
              ),
              actions: [
                //cancel button
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),

                //save button
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Save'),
                )
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
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Deliver Now",
                      style: TextStyle(color: theme.primary),
                    ),
                    //address
                    Text(
                      "6901 Hollywood Blv",
                      style: TextStyle(
                        color: theme.inversePrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
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
