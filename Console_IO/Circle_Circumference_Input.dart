/// This file calculates the circumference of a circle based on user input.
/// It features robust error handling using a 'while' loop and a 'try-catch' block
/// to ensure the user provides a valid, positive numerical input, making the
/// console application resistant to crashes from incorrect data types.

import 'dart:math';
import 'dart:io';

void circumferenceOfCircleRobust() {
  double? radius;
  
  while (radius == null) {
    stdout.write('Enter the radius of a circle: ');
    String? radiusInput = stdin.readLineSync();

    if (radiusInput == null || radiusInput.isEmpty) {
      print('Error: Input cannot be empty. Please try again.');
      continue; 
    }

    try {
      radius = double.parse(radiusInput);
      
      if (radius <= 0) {
        print('Error: Radius must be a positive number.');
        radius = null; 
      }
      
    } catch (e) {
      print('Error: Invalid number format. Please enter a valid number for the radius.');
      radius = null;
    }
  }

  double circumference = 2 * pi * radius;
  
  print('---');
  print('Circumference for radius $radius: ${circumference.toStringAsFixed(2)}');
}

void main() {
  circumferenceOfCircleRobust();
}