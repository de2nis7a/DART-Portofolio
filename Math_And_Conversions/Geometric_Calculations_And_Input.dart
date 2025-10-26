/// This file demonstrates the use of the 'dart:io' library for taking
/// user input (stdin.readLineSync) and 'dart:math' for geometric calculations.
/// It calculates the area and circumference of a circle based on user-provided radius.

import 'dart:io';
import 'dart:math';

void main() {
  // Call the function that handles user input and displays results.
  circleInfo();
}

// Takes user input for radius and prints the area.
void areaOfCircle() {
  stdout.write("Enter the radius: "); // Use stdout.write for cleaner prompt
  String? radiusInput = stdin.readLineSync();
  double radius = double.parse(radiusInput!);
  double area = pi * pow(radius, 2);
  print("Area (Input/Output version): $area");
}

// Calculates and returns the area of a circle. (Pure function)
double areaOfCircleByRadius(double radius) {
  double area = pi * pow(radius, 2);
  return area;
}

// Calculates and returns the circumference of a circle. (Pure function)
double circumferenceOfCircle(double radius) {
  return 2 * pi * radius;
}

// Consolidates user input and calls the pure calculation functions.
void circleInfo() {
  stdout.write("Enter the radius: ");
  String? radiusInt = stdin.readLineSync();
  // IMPORTANT: In a real app, always wrap parse in a try-catch!
  double radius = double.parse(radiusInt!); 
  
  print('---');
  print("Area: ${areaOfCircleByRadius(radius)}");
  print("Circumference: ${circumferenceOfCircle(radius)}");
  print('---');
  
  // Demonstrates the basic I/O version
  areaOfCircle(); 
}