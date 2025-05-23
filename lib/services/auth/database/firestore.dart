
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  //get collection of the orders
  final CollectionReference orders = 
  FirebaseFirestore.instance.collection('orders');

  // save the orders to the db
  Future<void> saveOrderToDatabase(String receipt) async {
    await orders.add({
      'date': DateTime.now() ,
      'order' : receipt,

      // add more fields as necessary
    });
  
  }
}