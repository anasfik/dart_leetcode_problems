class Solution {
  List<List<int>> construct2DArray(
    List<int> original,
    int m,
    int n,
  ) {
    // With this, we de get the minimum number of rows that can be formed.
    double rows = original.length / n;

    // just to clarify columns length given.
    int columns = m;

    // if the number of rows is not equal to the number of columns, then it is impossible to form a 2D array.
    bool isImpossible = rows != columns;

    // This holds the previous condition
    // In addition that the check of emptiness of list ( You can't really form something from nothing)
    bool shouldReturnAnEmptyList = original.isEmpty || isImpossible;

    // We save us the work if this is true.
    if (shouldReturnAnEmptyList) {
      return [];
    }

    // Now from this part, we are sure that we can form a 2D array, right?

    // We need to declare a Map to hold the sub-lists (rows) .
    Map<int, List<int>> map = {};

    // we iterate by n, because we want to get the sub-lists of length n.
    for (int index = 0; index < original.length; index += n) {
      // Then we save in the map.
      map[index] = original.sublist(index, n + index);
    }

    // That's it.
    return map.values.toList();
  }
}
