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

  if (!isWithinRange(a) || !isWithinRange(b) || !isWithinRange(c)) {
    return "Error: One or more of the provided inputs are not within the inclusive range [1-200].";
  }

  if (!isLessThanSumOfOtherTwo(a, b, c)) {
    return "Error: The value of $a must be less than the sum of $b and $c.";
  }

  if (!isLessThanSumOfOtherTwo(b, a, c)) {
    return "Error: The value of $b must be less than the sum of $a and $c.";
  }

  if (!isLessThanSumOfOtherTwo(c, a, b)) {
    return "Error: The value of $c must be less than the sum of $a and $b.";
  }

  if (a == b && b == c) {
    return "Equilateral";
  }

  return "All good";
}

bool isWithinRange(int num) {
  return (num >= 1 && num <= 200);
}

bool isLessThanSumOfOtherTwo(int first, int second, int third) {
  return (first < second + third);
}
