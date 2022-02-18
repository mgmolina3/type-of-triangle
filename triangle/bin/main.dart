import 'dart:io';
import 'package:triangle/triangle.dart' as triangle;

void main(List<String> args) {
  stdout.writeln(triangle.typeOfTriangle(args[0], args[1], args[2]));
}
