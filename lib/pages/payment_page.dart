import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:food/components/my_button.dart';

import 'delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

// user paying method
  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      // show  dialog onli if form is valid
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Confirm your Payment'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: [
                      Text('Card Number: $cardNumber'),
                      Text('Expiry Date: $expiryDate'),
                      Text('Card Holder Name: $cardHolderName'),
                      Text('CVV: $cvvCode'),
                    ],
                  ),
                ),
                actions: [
                  //cancel buton
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancel'),
                  ),

                  //yes button
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DeliveryProgressPage(),
                          ));
                    },
                    child: const Text('Yes'),
                  )
                ],
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return Scaffold(
        // ignore: deprecated_member_use
        backgroundColor: theme.background,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text("Checkout"),
        ),
        body: Column(
          children: [
            CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused,
                onCreditCardWidgetChange: (p0) {}),

            // credit card form
            CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: (data) {
                cardNumber = data.cardNumber;
                expiryDate = data.expiryDate;
                cardHolderName = data.cardHolderName;
                cvvCode = data.cvvCode;
              },
              formKey: formKey,
            ),

            const Spacer(),

            MyButton(text: "Pay Now", onTap: userTappedPay),

            const SizedBox(
              height:12,
            ),
          ],
        ));
  }
}
