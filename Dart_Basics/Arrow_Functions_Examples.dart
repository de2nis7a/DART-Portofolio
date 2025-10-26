/// This file groups simple functions written using the concise Arrow Syntax (=>).
/// It demonstrates how to define single-expression functions for clean, readable code,
/// including basic arithmetic, string formatting, and a simple speed calculation.

void main() {
  // Example usage
  print(multiplyBy2(5)); // Output: 10
  print(birthdayMessage("Alice", 29)); // Output: Happy 30th birthday, Alice!
  print(speedCalculator(100.0, 2.0)); // Output: Speed: 50.0
}

int multiplyBy2(int num) => num * 2;

String birthdayMessage(String name, int ageLastYear) => "Happy ${ageLastYear + 1}th birthday, $name!";

String speedCalculator(double distance, double time) =>  'Speed: ${distance / time}';