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
          cardType: CardType.debit,
          cardBrand: CardBrand.mastercard,
          cardExpiry: "2140",
          color1: Colors.purple,
          showNFC: false,
          cardNumber: "1234123412341234",
          cardHolderName: "Vaibhav Chandolia",
          backgroundDecorationImage: DecorationImage(
              image: AssetImage("assets/images/background.png")),
        ),
      ),
    );
  }
}
