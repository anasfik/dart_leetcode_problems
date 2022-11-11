import 'package:dart_leetcode_problems/add_digits/recursive_solution.dart';
import 'package:test/test.dart';

void main() {
  Solution _solution = Solution();

  test('addDigits', () {
    expect(_solution.addDigits(38), equals(2));
    expect(_solution.addDigits(0), equals(0));
    expect(_solution.addDigits(1000), equals(1));
    expect(_solution.addDigits(516), equals(3));
  });
}
