// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:testdev/src/services/provider/media/media.dart';

void main() {
  group("Test Init Media App", () {
    final media = Media();
    test("Test Variables", () async {
      expect(media.altoSA, 0.0);
    });
    test("Test Colores", () async {
      final media = Media();
      expect(media.azul, 0xff005070);
    });
  });
}
