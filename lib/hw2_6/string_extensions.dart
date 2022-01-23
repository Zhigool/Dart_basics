extension StringExtensions on String {
  static var stringToNumMap = <String, int>{
    "zero":   0,
    "one":    1,
    "two":    2,
    "three":  3,
    "four":   4,
    "five":   5,
    "six":    6,
    "seven":  7,
    "eight":  8,
    "nine":   9
  };

  List<num> getNums() {
    return split(" ")
        .map((e) => e.trim())
        .map((e) => num.tryParse(e))
        .whereType<num>()
        .toList();
  }

  List<int> getIntList({required String delimiter}) {
    var maybeNumbers = split(delimiter);
    var result = <int>[];
    for (String maybeNumber in maybeNumbers) {
      if (stringToNumMap.containsKey(maybeNumber)) {
        int number = stringToNumMap[maybeNumber]!;
        if (result.contains(number)) {
          continue;
        }
        result.add(number);
      }
    }
    return result;
  }
}