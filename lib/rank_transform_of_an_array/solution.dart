import 'dart:collection';

class Solution {
  // We create a HashMap to store the order of the elements.
  HashMap<int, int> hashMap = HashMap(
    equals: (p0, p1) => p0.hashCode == p1.hashCode,
    hashCode: (p0) => Object.hash(p0.hashCode, p0.toString().hashCode),
    isValidKey: (key) => key is int,
  );

  // We will track the order of the elements with this variable.
  int orderCount = 0;

  List<int> arrayRankTransform(List<int> arr) {
    // First we need a copy of the list, before we sort it.
    List<int> copyOfList = List.from(arr);

    // Then we sort it.
    arr.sort(((a, b) => a.compareTo(b)));

    // We iterate over the list and store the order of the elements.
    for (int index = 0; index < arr.length; index += 1) {
      // We identify the current and previous elements.
      int current = arr[index];

      // For the first iteration, there is no previous element.
      bool doesPreviousValueExists = index >= 1;

      // We check with this if the current element is not the last element.
      bool isBeforeTheLastIteration = index < arr.length - 1;

      if (doesPreviousValueExists) {
        // We identify the previous element.
        int previous = arr[index - 1];

        // We check with this if the previous element is equal to the current element.
        bool doesPreviousValueEqualsCurrent = previous == current;

        if (doesPreviousValueEqualsCurrent) {
          saveInHashMap(current, orderCount);
          continue;
        } else if (isBeforeTheLastIteration) {
          // We identify the next element.
          int next = arr[index + 1];

          // We check with this if the next element is equal to the current element.
          bool doesNextValueEqualsCurrent = next == current;

          // if the next (last) element is equal to the current element, we increment the order as well.
          if (doesNextValueEqualsCurrent) {
            incrementOrder();
            saveInHashMap(current, orderCount);
            continue;
          }
        }
      }

      // After we handled the edges elements in our list, we can save in hashmap and increment safely this for the rest of the elements.
      saveInHashMap(current, orderCount + 1);
      incrementOrder();
    }

    return arrayRankTransformResult(copyOfList);
  }

  void saveInHashMap(int key, int value) {
    hashMap.addAll({key: value});
  }

  void incrementOrder() {
    orderCount++;
  }

  List<int> arrayRankTransformResult(List<int> list) {
    return list.map((e) => hashMap[e]!).toList();
  }
}
