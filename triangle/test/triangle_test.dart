import 'package:triangle/triangle.dart';
import 'package:test/test.dart';

void main() {
  test('Non-Integer inputs', () {
    expect(typeOfTriangle('a', '-', '10'),
        equals('Error: One or more of the provided inputs are not integers.'));
  });

  test('Non-Integer inputs', () {
    expect(typeOfTriangle('9', '10', ';'),
        equals('Error: One or more of the provided inputs are not integers.'));
  });

  test('Out of Range inputs', () {
    expect(
        typeOfTriangle('9', '-1', '100'),
        equals(
            'Error: One or more of the provided inputs are not within the inclusive range [1-200].'));
  });

  test('Out of Range inputs', () {
    expect(
        typeOfTriangle('900', '900', '900'),
        equals(
            'Error: One or more of the provided inputs are not within the inclusive range [1-200].'));
  });

  test('Out of Range inputs', () {
    expect(
        typeOfTriangle('0', '1', '2'),
        equals(
            'Error: One or more of the provided inputs are not within the inclusive range [1-200].'));
  });

  test('Out of Range inputs', () {
    expect(
        typeOfTriangle('200', '200', '201'),
        equals(
            'Error: One or more of the provided inputs are not within the inclusive range [1-200].'));
  });

  test('NotATriangle', () {
    expect(typeOfTriangle('1', '2', '10'), equals('NotATriangle'));
  });

  test('NotATriangle', () {
    expect(typeOfTriangle('1', '2', '3'), equals('NotATriangle'));
  });

  test('NotATriangle', () {
    expect(typeOfTriangle('100', '200', '3'), equals('NotATriangle'));
  });

  test('Equilateral', () {
    expect(typeOfTriangle('1', '1', '1'), equals('Equilateral'));
  });

  test('Equilateral', () {
    expect(typeOfTriangle('100', '100', '100'), equals('Equilateral'));
  });

  test('Isosceles', () {
    expect(typeOfTriangle('100', '100', '99'), equals('Isosceles'));
  });

  test('Isosceles', () {
    expect(typeOfTriangle('4', '5', '4'), equals('Isosceles'));
  });

  test('Isosceles', () {
    expect(typeOfTriangle('10', '10', '12'), equals('Isosceles'));
  });

  test('Scalene', () {
    expect(typeOfTriangle('13', '10', '12'), equals('Scalene'));
  });

  test('Scalene', () {
    expect(typeOfTriangle('3', '4', '5'), equals('Scalene'));
  });

  test('Scalene', () {
    expect(typeOfTriangle('99', '100', '115'), equals('Scalene'));
  });
}
