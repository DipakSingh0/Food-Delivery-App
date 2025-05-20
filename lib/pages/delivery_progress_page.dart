import 'package:flutter/material.dart';
import 'package:food/components/my_receipt.dart';
import 'package:food/models/restaurant.dart';
import 'package:food/services/auth/database/firestore.dart';
import 'package:provider/provider.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {


//get access to the db
  FirestoreService db = FirestoreService();

   @override
  void initState() {
    super.initState();

    // if we get to this page, submit order to firestore db
    String receipt = context.read<Restaurant>().displayCartReceipt();
    db.saveOrderToDatabase(receipt);
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Delivery in progress..."),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: Column(
        children: [
          MyReceipt(),
        ],
      ),
    );
  }

  //custom bottomNavBar - message/call driver
  Widget _buildBottomNavBar(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return Container(
        height: 100,
        decoration: BoxDecoration(
          color: theme.secondary,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
        ),
        padding: const EdgeInsets.all(25),
        child: Row(
          children: [
            //   profile pic of delivery
            Container(
                decoration: BoxDecoration(
                  // ignore: deprecated_member_use
                  color: theme.background,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person),
                )),

            const SizedBox(
              width: 8,
            ),

            //driver details
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Michael Jordan",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: theme.inversePrimary,
                    )),
                Text("Driver",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: theme.inversePrimary,
                    )),
              ],
            ),

            const Spacer(),

            Row(
              children: [
                // message button
                Container(
                  decoration: BoxDecoration(
                    // ignore: deprecated_member_use
                    color: theme.background,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {}, // Implement message button logic here
                    icon: const Icon(Icons.message),
                    color: theme.primary,
                  ),
                ),

                const SizedBox(width: 10),

                // call button
                Container(
                  decoration: BoxDecoration(
                    // ignore: deprecated_member_use
                    color: theme.background,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {}, // Implement call button logic here
                    icon: const Icon(Icons.call),
                    color: Colors.green,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
