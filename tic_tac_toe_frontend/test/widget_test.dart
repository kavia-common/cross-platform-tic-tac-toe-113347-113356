import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe_frontend/main.dart';

void main() {
  testWidgets('App bar shows the correct title', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());
    expect(find.text('Tic Tac Toe'), findsOneWidget);
  });

  testWidgets('Game board is present', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());
    // There should be 9 cells (empty at first)
    final cells = find.byWidgetPredicate((widget) =>
        widget is Text &&
        (widget.data == "" || widget.data == "X" || widget.data == "O"));
    expect(cells.evaluate().length, greaterThanOrEqualTo(9));
  });
}
