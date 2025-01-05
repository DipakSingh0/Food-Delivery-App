import 'package:flutter/material.dart';
import 'package:food/components/my_current_location.dart';
import 'package:food/components/my_description_box.dart';
import 'package:food/components/my_drawer.dart';
import 'package:food/components/my_silver_appbar.dart';
import 'package:food/components/my_tab_bar.dart';
import 'package:food/services/auth/auth_service.dart';

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
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
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
          body: TabBarView(controller: _tabController, children: [
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("first tab items"),
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("second tab items"),
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("third tab items"),
            ),
          ]),
        ));
  }
}
