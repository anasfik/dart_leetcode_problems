class Solution {
  List<int> constructRectangle(int area) {
    // First, we initialized our result List with the area since it is the most far length [L] that we can get, in it's parallel the most smaller possible width [W] is 1.
    List<int> result = [area, 1];

    // We loop through all the possible values of [W] and check if the [L] is an integer,
    for (int index = 2; index < area; index += 1) {
      //
      // We calculate the length of the rectangle by dividing the area by the width [W]
      final double length = area / index;

      // we floor the length to the nearest integer, in order to compare them.
      final int flattedLength = length.floor();

      // here we have [length] is a double, and [flattedLength] is an integer, so we can't compare them directly, so we round the double to the nearest integer and compare them.
      if (flattedLength.roundToDouble() == length) {
        //
        // since we have a condition that the length  is always greater than the width, so we check if the length is greater than the width, if it is, we update the result.
        if (flattedLength >= index) {
          result[0] = flattedLength;
          result[1] = index;
        } else {
          //
          // if the length is smaller than the width, we break the loop, since we have the most possible result.
          break;
        }
      }
    }

    // return the result.
    return result;
  }
}
