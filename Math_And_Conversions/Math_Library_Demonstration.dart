/// This file demonstrates the use of key mathematical functions from the 'dart:math'
/// library, showcasing capabilities for numerical operations.
/// It includes examples of:
/// - Calculating the square root (sqrt)
/// - Raising a number to a power (pow)
/// - Using mathematical constants (pi)
/// - Calculating sine and cosine (sin, cos) for a value assumed to be in radians.

import 'dart:math';

void main(){
  int x = 50;
  double xSqrt = sqrt(x);
  int xSquared = pow(x, 2).toInt();
  double areaOfCircle = pi * pow(x, 2);
  double sinX = sin(x); // sin of x in radians
  double cosX = cos(x); // cos of x in radians
  print("$x, $xSqrt, $xSquared, $areaOfCircle, $sinX, $cosX");
}

