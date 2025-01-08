import 'package:flutter/material.dart';
import 'package:food/components/my_button.dart';
import 'package:food/models/food.dart';
import 'package:food/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({
    super.key,
    required this.food,
  }) {
    //initialize selected addons to be false
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
// method to add to cart
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    //close the currenet foodpage to go back to menu
    Navigator.of(context).pop();

    // format the selected addons
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }

    //add to cart
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return SafeArea(
      child: Stack(children: [
        Scaffold(
            // appBar: AppBar(),
            body: SingleChildScrollView(
          child: Column(
            children: [
              // food image on top
              Image.asset(widget.food.imagePath),

              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // food name
                    Text(
                      widget.food.name,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: theme.inversePrimary,
                      ),
                    ),

                    // food price
                    Text(
                      '\$${widget.food.price}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: theme.primary,
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    Divider(color: theme.secondary),

                    const SizedBox(
                      height: 10,
                    ),

                    Text(
                      "Addons",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: theme.inversePrimary,
                      ),
                    ),
                    // food description
                    Text(
                      widget.food.description,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: theme.primary,
                      ),
                    ),

                    // button -> add on  to cart
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: theme.secondary),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount: widget.food.availableAddons.length,
                        itemBuilder: (context, index) {
                          // get individual addons
                          Addon addon = widget.food.availableAddons[index];

                          //return chekc box UI
                          return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text(
                                '\$${addon.price}',
                                style: TextStyle(
                                  // fontSize: 20,
                                  // fontWeight: FontWeight.bold,
                                  color: theme.primary,
                                ),
                              ),
                              value: widget.selectedAddons[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addon] = value!;
                                });
                              });
                        },
                      ),
                    )
                  ],
                ),
              ),

              //buttton  -- add to cart
              MyButton(
                  text: "Add to Cart",
                  onTap: () => addToCart(widget.food, widget.selectedAddons)),

              const SizedBox(
                height: 25,
              ),
            ],
          ),
        )),

        // back button using stack
        SafeArea(
          child: Opacity(
            opacity: 0.5,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                color: theme.secondary,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios_rounded),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
