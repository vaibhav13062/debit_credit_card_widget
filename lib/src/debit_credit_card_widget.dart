import 'package:basic_utils/basic_utils.dart';
import 'package:debit_credit_card_widget/src/Enums.dart';
import 'package:flutter/material.dart';

class DebitCreditCardWidget extends StatefulWidget {
  final double? width;
  final String cardHolderName;
  final String cardNumber;
  final String cardExpiry;
  final String? validFrom;
  final BoxDecoration? cardDecoration;
  final Color textColor;
  final Color color2;
  final Color color1;
  final bool showNFC;
  final ImageProvider<Object> cardBrandImage;
  final CardBrand cardBrand;
  final CardType cardType;
  final String customCardType;
  final DecorationImage? backgroundDecorationImage;
  final ImageProvider<Object>? customCompanyImage;
  const DebitCreditCardWidget({
    super.key,
    this.width,
    this.cardHolderName = "John Doe",
    this.cardNumber = "0000000000000000",
    this.cardExpiry = "0000",
    this.cardDecoration,
    this.textColor = Colors.white,
    this.validFrom,
    this.color2 = Colors.black,
    this.color1 = Colors.pinkAccent,
    this.showNFC = true,
    this.cardBrand = CardBrand.visa,
    this.cardBrandImage = const AssetImage(
      "assets/images/visa_logo.png",
      package: "debit_credit_card_widget",
    ),
    this.cardType = CardType.debit,
    this.customCardType = "DEBIT",
    this.customCompanyImage,
    this.backgroundDecorationImage,
  });

  @override
  State<DebitCreditCardWidget> createState() => _DebitCreditCardWidgetState();
}

class _DebitCreditCardWidgetState extends State<DebitCreditCardWidget> {
  @override
  Widget build(BuildContext context) {
    double width = widget.width ?? MediaQuery.of(context).size.width;
    return SizedBox(
        width: (widget.width ?? MediaQuery.of(context).size.width),
        height: ((widget.width ?? MediaQuery.of(context).size.width)) * 0.56574,
        child: Card(
            margin: const EdgeInsets.all(0),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
                decoration: widget.cardDecoration ??
                    BoxDecoration(
                      image: widget.backgroundDecorationImage,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: const Alignment(0.6,
                            1.7), // 10% of the width, so there are ten blinds.
                        colors: [widget.color1, widget.color2], // red to yellow
                        tileMode: TileMode
                            .repeated, // repeats the gradient over the canvas
                      ),
                    ),
                child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              getCardTypeString(
                                  widget.cardType, widget.customCardType),
                              style: TextStyle(
                                  fontSize: 16, color: widget.textColor)),
                          widget.customCompanyImage == null
                              ? Container()
                              : Image(
                                  image: widget.customCompanyImage!,
                                  height: width / 13,
                                ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image(
                            image: const AssetImage(
                                'assets/images/chip_logo.png',
                                package: "debit_credit_card_widget"),
                            height: width / 11,
                          ),
                          Visibility(
                            visible: widget.showNFC,
                            child: Image(
                                color: widget.textColor,
                                image: const AssetImage(
                                  'assets/images/contactless_logo.png',
                                  package: "debit_credit_card_widget",
                                ),
                                height: width / 15),
                          ),
                        ],
                      ),
                      Text(
                        StringUtils.addCharAtPosition(
                            widget.cardNumber.toString(), " ", 4,
                            repeat: true),
                        style: TextStyle(
                            fontSize: 25,
                            letterSpacing: 3,
                            fontFamily: "Kredit",
                            package: "debit_credit_card_widget",
                            color: widget.textColor),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  Visibility(
                                    visible: widget.validFrom != null,
                                    child: Row(
                                      children: <Widget>[
                                        Text("VALID\nFROM",
                                            style: TextStyle(
                                                fontSize: 9,
                                                fontWeight: FontWeight.w800,
                                                color: widget.textColor)),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                            StringUtils.addCharAtPosition(
                                                widget.validFrom.toString(),
                                                "/",
                                                2),
                                            style: TextStyle(
                                                fontSize: 22,
                                                letterSpacing: 2,
                                                fontFamily: "Kredit",
                                                package:
                                                    "debit_credit_card_widget",
                                                color: widget.textColor))
                                      ],
                                    ),
                                  ),
                                  Visibility(
                                      visible: widget.validFrom != null,
                                      child: const SizedBox(
                                        width: 50,
                                      )),
                                  Row(
                                    children: <Widget>[
                                      Text("VALID\nTHRU",
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w800,
                                              color: widget.textColor)),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                          StringUtils.addCharAtPosition(
                                              widget.cardExpiry.toString(),
                                              "/",
                                              2),
                                          style: TextStyle(
                                              fontSize: 22,
                                              letterSpacing: 2,
                                              fontFamily: "Kredit",
                                              package:
                                                  "debit_credit_card_widget",
                                              color: widget.textColor))
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                widget.cardHolderName,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Kredit",
                                    package: "debit_credit_card_widget",
                                    color: widget.textColor),
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                          Image(
                              image: getCardBrandImage(
                                  widget.cardBrand, widget.cardBrandImage),
                              width: 65)
                        ],
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                    ],
                  ),
                ))));
  }

  String getCardTypeString(CardType cardType, String customCardType) {
    switch (cardType) {
      case CardType.debit:
        return "DEBIT";
      case CardType.credit:
        return "CREDIT";
      case CardType.custom:
        return customCardType;
    }
  }

  ImageProvider<Object> getCardBrandImage(
      CardBrand cartType, ImageProvider<Object> customCardImage) {
    switch (cartType) {
      case CardBrand.mastercard:
        return const AssetImage(
          "assets/images/mastercard_logo.png",
          package: "debit_credit_card_widget",
        );
      case CardBrand.visa:
        return const AssetImage(
          "assets/images/visa_logo.png",
          package: "debit_credit_card_widget",
        );
      case CardBrand.americanExpress:
        return const AssetImage(
          "assets/images/americanExpress_logo.png",
          package: "debit_credit_card_widget",
        );
      case CardBrand.discover:
        return const AssetImage(
          "assets/images/discover_logo.png",
          package: "debit_credit_card_widget",
        );
      case CardBrand.rupay:
        return const AssetImage(
          "assets/images/rupay_logo.png",
          package: "debit_credit_card_widget",
        );
      case CardBrand.custom:
        return customCardImage;
    }
  }
}
