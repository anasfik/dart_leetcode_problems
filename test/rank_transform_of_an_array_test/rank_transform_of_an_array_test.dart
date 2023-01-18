import 'package:dart_leetcode_problems/Rank_transform_of_an_array/solution.dart';
import 'package:test/test.dart';

void main() {
  Solution _solution = Solution();

  test("arrayRankTransform", () {
    expect(
      _solution.arrayRankTransform([37, 12, 28, 9, 100, 56, 80, 5, 12]),
      [5, 3, 4, 2, 8, 6, 7, 1, 3],
    );
  });
}
