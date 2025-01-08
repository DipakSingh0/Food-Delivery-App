import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food/models/cart_items.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {



  // list of food menu
  final List<Food> menu = [
    // burgers

    Food(
      name: "Bacon Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/baconcheese.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Mushroom Cheeseburger",
      description:
          "A juicy Mushroom with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/mushroomswiss.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Mushroom", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Spicy Chicken Cheeseburger",
      description:
          "A juicy Chicken patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/spicychicken.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Chicken", price: 1.99),
        Addon(name: "Sour Cream", price: 2.99),
      ],
    ),
    Food(
      name: "Veggie Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/veggie.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        // Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    // ..............sides.................//
    // Coleslaw
    Food(
      name: "Coleslaw",
      description: "A refreshing side salad with shredded cabbage and carrots.",
      imagePath: "lib/images/sides/coleslaw.jpg",
      price: 2.99,
      category: FoodCategory.sides,
      availableAddons: [],
    ),
// French Fries
    Food(
      name: "French Fries",
      description: "Crispy and golden-brown French fries.",
      imagePath: "lib/images/sides/frenchfries.jpg",
      price: 2.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Ketchup", price: 0.25),
      ],
    ),
// Macaroni and Cheese
    Food(
      name: "Macaroni and Cheese",
      description: "Classic creamy macaroni and cheese.",
      imagePath: "lib/images/sides/macaronni.jpg",
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [],
    ),
// Mashed Potatoes
    Food(
      name: "Mashed Potatoes",
      description: "Creamy mashed potatoes with butter and a touch of garlic.",
      imagePath: "lib/images/sides/mashedpotatoes.jpg",
      price: 2.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Gravy", price: 0.75),
      ],
    ),
// Steamed Vegetables
    Food(
      name: "Steamed Vegetables",
      description: "A healthy mix of seasonal steamed vegetables.",
      imagePath: "lib/images/sides/steamedvege.jpg",
      price: 3.49,
      category: FoodCategory.sides,
      availableAddons: [],
    ),

    //................. desserts..............//
    // Apple Pie
    Food(
      name: "Apple Pie",
      description: "A warm and flaky pie filled with sweet apples and spices.",
      imagePath: "lib/images/desserts/applepie.jpg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 1.50),
        Addon(name: "Whipped Cream", price: 0.50),
      ],
    ),
// Brownie
    Food(
      name: "Brownie",
      description:
          "A rich and fudgy chocolate brownie with a slightly chewy texture.",
      imagePath: "lib/images/desserts/brownie.jpg",
      price: 3.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Ice Cream Scoop", price: 1.50),
        Addon(name: "Chocolate Syrup", price: 0.50),
      ],
    ),
// Chocolate Cake
    Food(
      name: "Chocolate Cake",
      description:
          "A moist and decadent chocolate cake with chocolate frosting.",
      imagePath: "lib/images/desserts/chocolatecake.jpg",
      price: 6.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Frosting", price: 1.00),
        Addon(name: "Sprinkles", price: 0.25),
      ],
    ),
// Fruit Salad
    Food(
      name: "Fruit Salad",
      description:
          "A refreshing mix of seasonal fruits with a light vinaigrette.",
      imagePath: "lib/images/desserts/fruitsalad.jpg",
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Yogurt Topping", price: 1.00),
        Addon(name: "Honey", price: 0.50),
      ],
    ),
// Ice Cream
    Food(
      name: "Ice Cream Sundae",
      description: "Two scoops of your favorite ice cream with toppings.",
      imagePath: "lib/images/desserts/icecream.jpg",
      price: 4.50,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Toppings", price: 1.00),
        Addon(name: "Whipped Cream", price: 0.50),
      ],
    ),
    //............... drinks..................//
    // Coke
    Food(
      name: "Coca-Cola",
      description: "The classic refreshing cola.",
      imagePath: "lib/images/drinks/coke.png",
      price: 1.99,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
// Sprite
    Food(
      name: "Sprite",
      description: "A crisp and refreshing lemon-lime soda.",
      imagePath: "lib/images/drinks/sprite.png",
      price: 1.99,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
// Iced Tea
    Food(
      name: "Iced Tea",
      description: "Refreshing iced tea, perfect for a hot day.",
      imagePath: "lib/images/drinks/iced_tea.png",
      price: 2.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lemon", price: 0.50),
        Addon(name: "Sweetener", price: 0.25),
      ],
    ),
// Milkshake
    Food(
      name: "Milkshake",
      description: "Creamy and delicious milkshake in various flavors.",
      imagePath: "lib/images/drinks/milkshake.png",
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 0.50),
        Addon(name: "Sprinkles", price: 0.25),
      ],
    ),

    //----------------pizzas---------------//

    // Hawaiian Pizza
    Food(
      name: "Hawaiian Pizza",
      description:
          "A classic combination of ham and pineapple on a tomato sauce base.",
      imagePath: "lib/images/pizzas/hawaiian.jpg",
      price: 12.99,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 1.00),
        Addon(name: "Whipped Cream", price: 0.50),
      ],
    ),
// Margherita Pizza
    Food(
      name: "Margherita Pizza",
      description:
          "Simple yet delicious with tomato sauce, mozzarella cheese, and fresh basil.",
      imagePath: "lib/images/pizzas/margherita.jpg",
      price: 9.99,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 1.00),
        Addon(name: "Sprinkles", price: 0.25),
      ],
    ),
// Meat Lovers Pizza
    Food(
      name: "Meat Lovers Pizza",
      description:
          "A carnivore's delight with a variety of meats like pepperoni, sausage, and bacon.",
      imagePath: "lib/images/pizzas/meatlovers.jpg",
      price: 14.99,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Extra Pepperoni", price: 1.50),
        Addon(name: "Whipped Cream", price: 0.50),
      ],
    ),
// Pepperoni Pizza
    Food(
      name: "Pepperoni Pizza",
      description: "A classic favorite with plenty of crispy pepperoni slices.",
      imagePath: "lib/images/pizzas/pepperoni.jpg",
      price: 11.99,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Extra Pepperoni", price: 1.50),
        Addon(name: "Sprinkles", price: 0.25),
      ],
    ),
// Veggie Pizza
    Food(
        name: "Veggie Pizza",
        description:
            "A colorful pizza loaded with fresh vegetables like onions, peppers, and mushrooms.",
        imagePath: "lib/images/pizzas/veggie.jpg",
        price: 10.99,
        category: FoodCategory.pizza,
        availableAddons: [
          Addon(name: "Extra Vegetables", price: 1.00),
          Addon(name: "Whipped Cream", price: 0.50),
        ]),];

  // -----------GETTERS------------//

  List<CartItem> get cart => _cart;

  // -----------OPERATIONS------------//
  // user cart
      // user cart
  final List<CartItem> _cart = [];
  //delivery address which user can change
  // ignore: unused_field
  String _deliveryAddress = '128 Ktm balkumari';
  String get deliveryAddress => _deliveryAddress;


//  add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is alredy present same food on cart item and selected addon

    // ignore: unused_local_variable
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are same
      bool isSameFood = item.food == food;

      //check if list of selected addons are same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    //if item already exists, increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(CartItem(
        food: food,
        selectedAddons: selectedAddons,
      ));
    }
    notifyListeners();
  }

// remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

// get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

// get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

// clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  
  // / update the delivery address
  void updateDeliveryAddress(String newAddress){
    _deliveryAddress = newAddress;
    notifyListeners();
  }
  
  // -----------HELPERS------------//

  // generate receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // format the date to include upt o seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("------------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("  Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("-------------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to : $_deliveryAddress");

    return receipt.toString();}}

//  format double value into money
String _formatPrice(double price) {
  return "\$${price.toStringAsFixed(2)}";
}

// format list of addoons into a string sumary
String _formatAddons(List<Addon> addons) {
  return addons
      .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
      .join(", ");
}
