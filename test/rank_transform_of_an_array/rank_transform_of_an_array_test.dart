import 'package:dart_leetcode_problems/convert_1d_array%20_into_2d%20_array/solution.dart';
import 'package:test/test.dart';

void main() {
  Solution _solution = Solution();
  test("construct2DArray", () {
    expect(_solution.construct2DArray([1, 2, 3, 4], 2, 2), [
      [1, 2],
      [3, 4]
    ]);
    expect(_solution.construct2DArray([1, 2, 3], 1, 3), [
      [1, 2, 3]
    ]);

    expect(_solution.construct2DArray([1, 2], 1, 1), []);
  });
}
