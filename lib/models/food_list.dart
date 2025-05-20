// import 'package:food/constants/app_assets.dart';
// import 'package:food/models/food.dart';

// final List<Food> menu = [
//   // burgers

//   Food(
//     name: "Bacon Cheeseburger",
//     description:
//         "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
//     // imagePath: "lib/images/burgers/baconcheese.jpg",
//     imagePath: AppAssets.burgerCheese,
//     price: 0.99,
//     category: FoodCategory.burgers,
//     availableAddons: [
//       Addon(name: "Extra cheese", price: 0.99),
//       Addon(name: "Bacon", price: 1.99),
//       Addon(name: "Avocado", price: 2.99),
//     ],
//   ),
//   Food(
//     name: "Mushroom Cheeseburger",
//     description:
//         "A juicy Mushroom with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
//     imagePath: AppAssets.burgerMushroom,
//     price: 0.99,
//     category: FoodCategory.burgers,
//     availableAddons: [
//       Addon(name: "Extra cheese", price: 0.99),
//       Addon(name: "Mushroom", price: 1.99),
//       Addon(name: "Avocado", price: 2.99),
//     ],
//   ),
//   Food(
//     name: "Spicy Chicken Cheeseburger",
//     price: 0.89,
//     description:
//         "A juicy Chicken patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
//     imagePath: AppAssets.burgerSpicyChicken,
//     category: FoodCategory.burgers,
//     availableAddons: [
//       Addon(name: "Extra cheese", price: 0.99),
//       Addon(name: "Chicken", price: 1.99),
//       Addon(name: "Sour Cream", price: 2.99),
//     ],
//   ),
//   Food(
//     name: "Veggie Cheeseburger",
//     description:
//         "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
//     imagePath: AppAssets.burgerVeggie,
//     price: 0.95,
//     category: FoodCategory.burgers,
//     availableAddons: [
//       Addon(name: "Extra cheese", price: 0.99),
//       // Addon(name: "Bacon", price: 1.99),
//       Addon(name: "Avocado", price: 2.99),
//     ],
//   ),
//   Food(
//     name: "Classic Cheeseburger",
//     description:
//         "A juicy with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
//     imagePath: AppAssets.burgerCheese,
//     price: 0.85,
//     category: FoodCategory.burgers,
//     availableAddons: [
//       Addon(name: "Extra cheese", price: 0.99),
//       Addon(name: "Bacon", price: 1.99),
//       Addon(name: "Avocado", price: 2.99),
//     ],
//   ),
//   // ..............sides.................//
//   // Coleslaw
//   Food(
//     name: "Coleslaw",
//     description: "A refreshing side salad with shredded cabbage and carrots.",
//     imagePath: AppAssets.sideColeslaw,
//     price: 2.99,
//     category: FoodCategory.sides,
//     availableAddons: [],
//   ),
// // French Fries
//   Food(
//     name: "French Fries",
//     description: "Crispy and golden-brown French fries.",
//     imagePath: AppAssets.sideFrenchfries,
//     price: 2.49,
//     category: FoodCategory.sides,
//     availableAddons: [
//       Addon(name: "Cheese Sauce", price: 0.99),
//       Addon(name: "Ketchup", price: 0.25),
//     ],
//   ),
// // Macaroni and Cheese
//   Food(
//     name: "Macaroni and Cheese",
//     description: "Classic creamy macaroni and cheese.",
//     imagePath: AppAssets.sideMacaronni,
//     price: 3.99,
//     category: FoodCategory.sides,
//     availableAddons: [],
//   ),
// // Mashed Potatoes
//   Food(
//     name: "Mashed Potatoes",
//     description: "Creamy mashed potatoes with butter and a touch of garlic.",
//     imagePath: AppAssets.sideMashedPotatoes,
//     price: 2.99,
//     category: FoodCategory.sides,
//     availableAddons: [
//       Addon(name: "Gravy", price: 0.75),
//     ],
//   ),
// // Steamed Vegetables
//   Food(
//     name: "Steamed Vegetables",
//     description: "A healthy mix of seasonal steamed vegetables.",
//     imagePath: AppAssets.sideSteamedVege,
//     price: 3.49,
//     category: FoodCategory.sides,
//     availableAddons: [],
//   ),

//   //................. desserts..............//
//   // Apple Pie
//   Food(
//     name: "Apple Pie",
//     description: "A warm and flaky pie filled with sweet apples and spices.",
//     imagePath: AppAssets.desertsApplePie,
//     price: 5.99,
//     category: FoodCategory.desserts,
//     availableAddons: [
//       Addon(name: "Vanilla Ice Cream", price: 1.50),
//       Addon(name: "Whipped Cream", price: 0.50),
//     ],
//   ),
// // Brownie
//   Food(
//     name: "Brownie",
//     description:
//         "A rich and fudgy chocolate brownie with a slightly chewy texture.",
//     imagePath: AppAssets.desertsBrownie,
//     price: 3.99,
//     category: FoodCategory.desserts,
//     availableAddons: [
//       Addon(name: "Ice Cream Scoop", price: 1.50),
//       Addon(name: "Chocolate Syrup", price: 0.50),
//     ],
//   ),
// // Chocolate Cake
//   Food(
//     name: "Chocolate Cake",
//     description: "A moist and decadent chocolate cake with chocolate frosting.",
//     imagePath: AppAssets.desertsChocolateCake,
//     price: 6.99,
//     category: FoodCategory.desserts,
//     availableAddons: [
//       Addon(name: "Extra Frosting", price: 1.00),
//       Addon(name: "Sprinkles", price: 0.25),
//     ],
//   ),
// // Fruit Salad
//   Food(
//     name: "Fruit Salad",
//     description:
//         "A refreshing mix of seasonal fruits with a light vinaigrette.",
//     imagePath: AppAssets.desertsFruitSalad,
//     price: 4.99,
//     category: FoodCategory.desserts,
//     availableAddons: [
//       Addon(name: "Yogurt Topping", price: 1.00),
//       Addon(name: "Honey", price: 0.50),
//     ],
//   ),
// // Ice Cream
//   Food(
//     name: "Ice Cream Sundae",
//     description: "Two scoops of your favorite ice cream with toppings.",
//     imagePath: AppAssets.desertsIcecream,
//     price: 4.50,
//     category: FoodCategory.desserts,
//     availableAddons: [
//       Addon(name: "Extra Toppings", price: 1.00),
//       Addon(name: "Whipped Cream", price: 0.50),
//     ],
//   ),
//   //............... drinks..................//
//   // Coke
//   Food(
//     name: "Coca-Cola",
//     description: "The classic refreshing cola.",
//     imagePath: AppAssets.drinksCoke,
//     price: 1.99,
//     category: FoodCategory.drinks,
//     availableAddons: [],
//   ),
// // Sprite
//   Food(
//     name: "Sprite",
//     description: "A crisp and refreshing lemon-lime soda.",
//     imagePath: AppAssets.drinksSprite,
//     price: 1.99,
//     category: FoodCategory.drinks,
//     availableAddons: [],
//   ),
// // Iced Tea
//   Food(
//     name: "Iced Tea",
//     description: "Refreshing iced tea, perfect for a hot day.",
//     imagePath: AppAssets.drinksIcedTea,
//     price: 2.49,
//     category: FoodCategory.drinks,
//     availableAddons: [
//       Addon(name: "Lemon", price: 0.50),
//       Addon(name: "Sweetener", price: 0.25),
//     ],
//   ),
// // Milkshake
//   Food(
//     name: "Milkshake",
//     description: "Creamy and delicious milkshake in various flavors.",
//     imagePath: AppAssets.drinksMilkShake,
//     price: 3.99,
//     category: FoodCategory.drinks,
//     availableAddons: [
//       Addon(name: "Whipped Cream", price: 0.50),
//       Addon(name: "Sprinkles", price: 0.25),
//     ],
//   ),

//   //----------------pizzas---------------//

//   // Hawaiian Pizza
//   Food(
//     name: "Hawaiian Pizza",
//     description:
//         "A classic combination of ham and pineapple on a tomato sauce base.",
//     imagePath: AppAssets.pizzaHawaiian,
//     price: 12.99,
//     category: FoodCategory.pizza,
//     availableAddons: [
//       Addon(name: "Extra Cheese", price: 1.00),
//       Addon(name: "Whipped Cream", price: 0.50),
//     ],
//   ),
// // Margherita Pizza
//   Food(
//     name: "Margherita Pizza",
//     description:
//         "Simple yet delicious with tomato sauce, mozzarella cheese, and fresh basil.",
//     imagePath: AppAssets.pizzaMargherita,
//     price: 9.99,
//     category: FoodCategory.pizza,
//     availableAddons: [
//       Addon(name: "Extra Cheese", price: 1.00),
//       Addon(name: "Sprinkles", price: 0.25),
//     ],
//   ),
// // Meat Lovers Pizza
//   Food(
//     name: "Meat Lovers Pizza",
//     description:
//         "A carnivore's delight with a variety of meats like pepperoni, sausage, and bacon.",
//     imagePath: AppAssets.pizzaMeat,
//     price: 14.99,
//     category: FoodCategory.pizza,
//     availableAddons: [
//       Addon(name: "Extra Pepperoni", price: 1.50),
//       Addon(name: "Whipped Cream", price: 0.50),
//     ],
//   ),
// // Pepperoni Pizza
//   Food(
//     name: "Pepperoni Pizza",
//     description: "A classic favorite with plenty of crispy pepperoni slices.",
//     imagePath: AppAssets.pizzaPepperoni,
//     price: 11.99,
//     category: FoodCategory.pizza,
//     availableAddons: [
//       Addon(name: "Extra Pepperoni", price: 1.50),
//       Addon(name: "Sprinkles", price: 0.25),
//     ],
//   ),
// // Veggie Pizza
//   Food(
//       name: "Veggie Pizza",
//       description:
//           "A colorful pizza loaded with fresh vegetables like onions, peppers, and mushrooms.",
//       imagePath: AppAssets.pizzaVeg,
//       price: 10.99,
//       category: FoodCategory.pizza,
//       availableAddons: [
//         Addon(name: "Extra Vegetables", price: 1.00),
//         Addon(name: "Whipped Cream", price: 0.50),
//       ]),
// ];
