class Solution {
  late int sumForNextRecursion;
  int addDigits(int num) {
    if (num < 10) {
      return num;
    }
    String numberAsString = num.toString();
    sumForNextRecursion = 0;
    for (int index = 0; index < numberAsString.length; index += 1) {
      sumForNextRecursion += int.parse(
        numberAsString[index],
      );
    }

    return addDigits(sumForNextRecursion);
  }
}
