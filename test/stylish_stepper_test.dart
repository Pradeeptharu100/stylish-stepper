import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stylish_stepper/stylish_stepper.dart';

void main() {
  testWidgets('StylishStepper renders correctly', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: StylishStepper(
            header: Text('Header Text'),
            content: Text('Content Text'),
            showLastIcon: true,
            dotIconColor: Colors.blue,
            svgIcon: 'assets/icons/example.svg',
            svgIconColor: Colors.red,
            assetIcon: 'assets/icons/example.png',
            assetIconColor: Colors.green,
          ),
        ),
      ),
    );

    // Verify that the widget has rendered correctly.

    // Header Text
    expect(find.text('Header Text'), findsOneWidget);

    // Content Text
    expect(find.text('Content Text'), findsOneWidget);

    // Dot Icon
    expect(
        find.byWidgetPredicate((widget) =>
            widget is Container &&
            widget.decoration is BoxDecoration &&
            widget.decoration == Colors.blue),
        findsOneWidget);

    // SVG Icon
    expect(find.byWidgetPredicate((widget) => widget is SvgPicture),
        findsOneWidget);

    // SVG Icon Color
    expect(
        find.byWidgetPredicate(
            (widget) => widget is SvgPicture && (widget) == Colors.red),
        findsOneWidget);

    // Asset Icon
    expect(
        find.byWidgetPredicate((widget) =>
            widget is Image &&
            widget.image is AssetImage &&
            widget.color == Colors.green),
        findsOneWidget);
  });
}
