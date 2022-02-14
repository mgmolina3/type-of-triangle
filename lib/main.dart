import 'dart:io';

void main(List<String> args) {
  stdout.writeln(typeOfTriangle(args[0], args[1], args[2]));
}

String typeOfTriangle(a, b, c) {
  try {
    a = int.parse(a);
    b = int.parse(b);
    c = int.parse(c);
  } on FormatException {
    return "Error: One or more of the provided inputs are not integers.";
  }

  if (!(a >= 1 && a <= 200) || !(b >= 1 && b <= 200) || !(c >= 1 && c <= 200)) {
    return "Error: One or more of the provided inputs are not within the inclusive range [1-200].";
  }

  if (!(a < b + c) || !(b < a + c) || !(c < a + b)) {
    return "NotATriangle";
  }

  if (a == b && b == c) {
    return "Equilateral";
  }

  if ((a == b) || (b == c) || (a == c)) {
    return "Isosceles";
  }

  return "Scalene";
}
