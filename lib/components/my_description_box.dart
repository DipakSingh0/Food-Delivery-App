import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
     var myPrimaryTextStyle = TextStyle(color: theme.inversePrimary);
    // var mySecondaryTextStyle = TextStyle(color: theme.primary);

    return Container(
        decoration: BoxDecoration(
          // border: Border.all(color: theme.secondary),
          border: Border.all(),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.only(left:25,right:25,bottom:25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //delivery fee
            Column(
              children: [
                Text('\$0.49' , style: myPrimaryTextStyle),
                Text('Delivery fee' , style: myPrimaryTextStyle),
              ],
            ),
            // delivery time
            Column(
              children: [
                Text('15-20 min', style: myPrimaryTextStyle ),
                Text('Delivery time' ,style: myPrimaryTextStyle),
              ],
            ),
          ],
        ));
  }
}
