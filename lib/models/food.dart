//food items
class Food {
  final String name;
  final double price;
  final String description;
  final String imagePath;
  final FoodCategory category;
  List<Addon> availableAddons;

  Food({
    required this.name,
    required this.price,
    required this.description,
    required this.imagePath,
    required this.category,
    required this.availableAddons,
  });
}

//food categores
enum FoodCategory {
  burgers,
  desserts,
  drinks,
  sides,
  pizza,
}

//food adons
class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
