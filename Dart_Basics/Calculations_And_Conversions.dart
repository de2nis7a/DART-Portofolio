/// This file showcases mathematical calculation capabilities in Dart.
/// It includes functions for currency conversion, temperature conversion,
/// and complex geometric calculations (Pythagorean theorem) using 'dart:math'.
import 'dart:math';
void main() {
  eurosToPounds(20);
  fahrenheitToCelsius(10);
  print('---');
  // Calculates hypotenuse for cathetus c1=3, c2=4 (Result should be 5.0)
  print('Hypotenuse: ${calculateHypotenuse(3, 4)}'); 
}

// Converts Euro to Pounds at a fixed rate (0.86).
void eurosToPounds(double euro) {
  double pounds = euro * 0.86;
  print("€$euro equals £$pounds");
}

// Converts Fahrenheit (F) to Celsius (C).
void fahrenheitToCelsius(double f) {
  double c = (f - 32) * 5 / 9;
  print("$f °F equals $c °C");
}

// Calculates the hypotenuse using the Pythagorean theorem (sqrt(c1^2 + c2^2)).
double calculateHypotenuse(double c1, double c2) {
  double h = sqrt(pow(c1, 2) + pow(c2, 2));
  return h;
}