
class Solution {
  late int sumForNextRecursion;
  int recursiveAddDigits(int num) {
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

    return recursiveAddDigits(sumForNextRecursion);
  }

  int constantTimeAddDigits(int num) {
    if (num == 0) {
      return 0;
    } else if (num % 9 == 0) {
      return 9;
    } else {
      return num % 9;
    }
  }
}
