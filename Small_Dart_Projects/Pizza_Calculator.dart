/// This is a simple Console Line Interface (CLI) application in Dart
/// that calculates the price of a pizza based on its area.
/// It demonstrates the use of core Dart libraries (dart:io for user input
/// and dart:math for calculations) and implements modularity through functions.

import 'dart:io';
import 'dart:math';

void main() {
  pizzaOrder();
}

String getPizzaType() {
  print('What type of pizza do you want?');
  String? input = stdin.readLineSync();
  return input!;
}

int getPizzaSize() {
  int? size;
  while (size == null) {
    stdout.write('Enter the diameter of the pizza (in inches): ');
    String? input = stdin.readLineSync();

    try {
      if (input != null) {
        size = int.parse(input.trim());
      }
    } catch (e) {
      print('Invalid input. Please enter a whole number for the diameter.');
    }
  }
  return size;
}

double getPizzaPrice(int radius) {
  double pricePerSquareInch = 0.05;
  double area = pi * pow(radius / 2, 2);
  return area * pricePerSquareInch;
}

void pizzaOrder() {
  String pizzaType = getPizzaType();
  int pizzaSize = getPizzaSize();
  double pizzaPrice = getPizzaPrice(pizzaSize);
  print(
    'A $pizzaSize inch £$pizzaType pizza '
    'costs £${pizzaPrice.toStringAsFixed(2)}',
  );
}
