class StringCalculator {
  static final RegExp _extractNum = RegExp(r'-?\d+');

  int add(String numbers) {
    int sum = 0;
    String negatives = "";

    List<int> numList = _extractNum.allMatches(numbers).map((match) => int.parse(match.group(0)!)).toList();

    for (var val in numList) {
      if (val.isNegative) {
        negatives = negatives + (negatives.isEmpty ? "$val" : ", $val");
      }
      sum += val;
    }

    if (negatives.isNotEmpty) {
      throw ArgumentError("Input: ${numbers.toString()} : Output: negative numbers not allowed: $negatives");
    }

    return sum;
  }
}
