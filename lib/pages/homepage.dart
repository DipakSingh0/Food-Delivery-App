import 'package:flutter/material.dart';
import 'package:food/components/my_current_location.dart';
import 'package:food/components/my_description_box.dart';
import 'package:food/components/my_drawer.dart';
import 'package:food/components/my_food_tile.dart';
import 'package:food/components/my_silver_appbar.dart';
import 'package:food/components/my_tab_bar.dart';
import 'package:food/models/food.dart';
import 'package:food/models/restaurant.dart';
import 'package:food/pages/food_page.dart';
import 'package:food/services/auth/auth_service.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // tabbar controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // sort out and return a list of food items that belong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

// return list of foods in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      // get category menu
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          // get individual food
          final food = categoryMenu[index];

          // return food tile UI
          return FoodTile(
            food: food,
            // onTap: (){},
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => FoodPage(food: food))),
          );
        },
      );
    }).toList();
  }

  //cahat and auth service
  // ignore: unused_field
  final AuthService _authService = AuthService();
  // final ChatService _chatService = ChatService();

  //logout
  void logout() {
    //get auth service
    // ignore: no_leading_underscores_for_local_identifiers
    final _auth = AuthService();
    _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return Scaffold(
        // ignore: deprecated_member_use
        backgroundColor: theme.background,
        drawer: MyDrawer(),
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  MySliverAppBar(
                      // title: Text('data'),
                      title: MyTabBar(tabController: _tabController),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Divider(
                            indent: 25,
                            endIndent: 25,
                            color: theme.secondary,
                          ),

                          //my current location
                          MyCurrentLocation(),

                          //description box
                          const MyDescriptionBox()
                        ],
                      )),
                ],
            body: Consumer<Restaurant>(
                builder: (context, restaurant, child) => TabBarView(
                    controller: _tabController,
                    children: getFoodInThisCategory(restaurant.menu)))));
  }
}
