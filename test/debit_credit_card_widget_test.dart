import 'package:flutter_test/flutter_test.dart';

import 'package:debit_credit_card_widget/debit_credit_card_widget.dart';

void main() {
  testWidgets('MyWidget has a title and message', (tester) async {
    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(const DebitCreditCardWidget());
  });
}
