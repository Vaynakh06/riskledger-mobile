import 'package:flutter_test/flutter_test.dart';
import 'package:riskledger_mobile/app.dart';

void main() {
  testWidgets('RiskLedger home screen shows portfolio summary', (WidgetTester tester) async {
    await tester.pumpWidget(const RiskLedgerApp());

    expect(find.text('Портфель'), findsOneWidget);
    expect(find.text('Позиции'), findsOneWidget);
    expect(find.text('Реализованный результат'), findsOneWidget);
  });
}
