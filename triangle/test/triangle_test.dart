import 'package:triangle/triangle.dart';
import 'package:test/test.dart';

void main() {
  test('Equilateral', () {
    expect(typeOfTriangle(1, 1, 1), equals('Equilateral'));
  });
}
