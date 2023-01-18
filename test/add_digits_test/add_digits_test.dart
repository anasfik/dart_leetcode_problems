import 'package:dart_leetcode_problems/add_digits/solution.dart';
import 'package:test/test.dart';

void main() {
  Solution _solution = Solution();

  test('addDigits Recursive', () {
    expect(_solution.recursiveAddDigits(38), equals(2));
    expect(_solution.recursiveAddDigits(0), equals(0));
    expect(_solution.recursiveAddDigits(1000), equals(1));
    expect(_solution.recursiveAddDigits(516), equals(3));
  });

  test('addDigits Recursive', () {
    expect(_solution.constantTimeAddDigits(38), equals(2));
    expect(_solution.constantTimeAddDigits(0), equals(0));
    expect(_solution.constantTimeAddDigits(1000), equals(1));
    expect(_solution.constantTimeAddDigits(516), equals(3));
  });
}
