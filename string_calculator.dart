import 'string_calculator_service.dart';

void main() {
  testSolution();
}

void testSolution() {
  StringCalculator calculator = StringCalculator();
  print("Running tests...");

  print("Input: \"\"   : Output: 0 ------>  " + (calculator.add("") == 0 ? "passed" : "failed"));
  print("Input: \"1\"   : Output: 1 ------>  " + (calculator.add("1") == 1 ? "passed" : "failed"));
  print("Input: \"1,5\"   : Output: 6 ------>  " + (calculator.add("1,5") == 6 ? "passed" : "failed"));
  print("Input: \"//;\n1;2\"   : Output: 3 ------>  " + (calculator.add("//;\n1;2") == 3 ? "passed" : "failed"));
}
