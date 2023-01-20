import 'package:dart_leetcode_problems/construct_rectangle/solution.dart';
import 'package:test/test.dart';

void main() {
  Solution _solution = Solution();
  test("constructRectangle", () {
    expect(_solution.constructRectangle(12), [4, 3]);
    expect(_solution.constructRectangle(4), [2, 2]);
    expect(_solution.constructRectangle(122122), [427, 286]);
  });
}
