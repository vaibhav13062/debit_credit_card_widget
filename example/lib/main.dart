import 'package:debit_credit_card_widget/debit_credit_card_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DEBIT/CREDIT CARD EXAMPLE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'DEBIT/CREDIT CARD EXAMPLE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: DebitCreditCardWidget(
          cardType: CardType
              .debit, // CAN SET CARD TYPE AS DEBIT,CREDIT OR CUSTOM(FOR CUSTOM USE :- customCardType )
          cardBrand: CardBrand
              .mastercard, // CAN SET CARD BRAND (VISA,MASTERCARD,AMERICAN EXPRESS , DISCOVER, RUPAY OR CUSTOM(FOR CUSTOM USE :- cardBrandImage))
          cardExpiry: "2140", // CARD EXPIRY DATE
          color1: Colors.purple, // GRADIENT FIRST COLOR
          showNFC: false, // BOOL TO SHOW OR HIDE NFC LOGO
          cardNumber: "1234123412341234", // CARD NUMBER ONLY 16 CHARACTERS
          cardHolderName: "Vaibhav Chandolia", // CARD HOLDER NAME
          backgroundDecorationImage: DecorationImage(
              image: AssetImage(
                  "assets/images/background.png")), // YOU CAN ADD BACKGROUND IMAGE FROM HERE
        ),
      ),
    );
  }
}
