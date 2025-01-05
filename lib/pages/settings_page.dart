import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      backgroundColor: theme.primary,

      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: theme.secondary,
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.only(left:25,top:10,right:25),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dark Mode",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:theme.inversePrimary,
                    
                  ),
                  ),

                  //switch
                  CupertinoSwitch(
                    value: Provider.of<ThemeProvider>(context,listen:false).isDarkMode, 
                    onChanged: (value)=> Provider.of<ThemeProvider>(context,listen:false).toggleTheme(),
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
