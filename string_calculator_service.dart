class StringCalculator {
  static final RegExp _extractNum = RegExp(r'-?\d+');

  int add(String numbers) {
    int sum = 0;

    List<int> numList = _extractNum.allMatches(numbers).map((match) => int.parse(match.group(0)!)).toList();

    for (var val in numList) {
      assert(!val.isNegative, "negative numbers not allowed: $val");
      sum += val;
    }

    return sum;
  }
}
