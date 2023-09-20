# Debit Credit Card Widget

A Flutter widget for displaying debit and credit card designs.

![Example Image](https://github.com/vaibhav13062/debit_credit_card_widget/raw/master/image.png)


## Installation

To use this package, add `debit_credit_card_widget` as a dependency in your `pubspec.yaml` file:
```yaml
dependencies:
  debit_credit_card_widget: ^1.0.0
```

## Getting started
Import the package into your Flutter code:

```dart
import 'package:debit_credit_card_widget/debit_credit_card_widget.dart';
```

## Usage
To create a DebitCreditCardWidget, simply instantiate it with the desired properties:

```dart
DebitCreditCardWidget(
cardHolderName: "John Doe",
cardNumber: "0000 0000 0000 0000",
cardExpiry: "12/24",
// ... other properties
),
```

## Properties

| Param                       | Description                                                                |
|-----------------------------|----------------------------------------------------------------------------|
| `width`                     | Give specific width to the card (take as much space available by default). |
| `cardHolderName`            | Allow you to set the cardholder's name("John Doe" - Default).              |
| `cardNumber`                | Allow you to set the card Number("4 X 0000" - Default)(Max 16).            |
| `cardExpiry`                | Allow you to set the card Expiry("0000" - Default)(Max 4).                 |
| `validFrom`                 | Allow you to set the card Valid From(Max 4).                               |
| `cardDecoration`            | Allows you to customize whole card decoration.                             |
| `textColor`                 | Allows you to change Text Color(White - Default).                          |
| `color1`                    | Allows you to change Gradient First Color(Pink Accent - Default).          |
| `color2`                    | Allows you to change Gradient Second Color(Black - Default).               |
| `showNFC`                   | Allows you to show Hide NFC Logo.                                          |
| `cardBrand`                 | `CardBrand` Enum can be Used to Specify card brand (eg.`CardBrand.visa`).  |
| `cardBrandImage`            | If cardBrand is set to `CardBrand.custom` cardBrandImage will be used.     |
| `cardType`                  | `CardType` Enum can be Used to Specify card brand (eg.`CardType.credit`).  |
| `customCardType`            | If cardType is set to `CardType.custom` customCardType will be used.       |
| `customCompanyImage`        | Allows you to add custom image to top right of the card.                   |
| `backgroundDecorationImage` | Allows you to add background image int he card.                            |

## License

This package is open-source and released under the MIT License.

## Issues and Contributions
Please report any issues or contribute to this project on GitHub.

## Additional information

- Made by :- Vaibhav Chandolia
- Email:- chandolia.vaibhav@gmail.com
- Website:- vaibhavchandolia.info
