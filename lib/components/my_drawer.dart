import 'package:flutter/material.dart';
import 'package:food/components/my_drawer_tile.dart';
import 'package:food/pages/settings_page.dart';
import 'package:food/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

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
    return Drawer(
      // ignore: deprecated_member_use
      backgroundColor: theme.background,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // DrawerHeader
            Column(
              children: [
                DrawerHeader(
                  child: Center(
                    child: Icon(
                      Icons.lock,
                      color: theme.primary,
                      size: 80,
                    ),
                  ),
                ),

                //home list tile
                MyDrawerTile(text: "H O M E", icon: Icons.home, onTap:()=> Navigator.pop(context)  ),
                
                MyDrawerTile(text: "S E T T I N G S", icon: Icons.settings, 
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> SettingsPage()));
                }),

                MyDrawerTile(text: "C O N N E C T", icon: Icons.connect_without_contact, onTap: (){
                   Navigator.pop(context);
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> SettingsPage()));
                }),

                MyDrawerTile(text: "A B O U T", icon: Icons.info_outline, onTap: (){
                   Navigator.pop(context);
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> SettingsPage()));
                }),



                // MyDrawerTile(text: "L O G O U T", icon: Icons.logout, onTap: logout),



                // home list tile
                // Padding(
                //   padding: const EdgeInsets.only(left: 25.0),
                //   child: ListTile(
                //     title: const Text('H O M E'),
                //     leading: Icon(Icons.home),
                //     onTap: () {
                //       //pop the drawer
                //       Navigator.pop(context);
                //     },
                //   ),
                // ),

              ],
            ),
            // logout list tile
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyDrawerTile(text: "L O G O U T", icon: Icons.logout, onTap: logout),
                ),

          ],
        ),
      ),
    );
  }
}
