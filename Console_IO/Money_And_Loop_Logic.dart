/// This file contains functions that apply basic business logic, including
/// a 'for' loop for output formatting and integer division logic for calculating
/// how many items can be afforded based on a budget.

import 'dart:io';

void main() {
  // Display a burger order for 3 burgers at a price of 9.99
  displayBurgerOrder(3, 9.99); 
  print('---');
  
  // Calculate how many $9.99 burgers can be bought with $29.99 (Result should be 3)
  print("Burgers you can afford: ${howManyBurgers(9.99, 29, 99)}");
}

// Prints a visual order receipt using a 'for' loop and displays the total price.
void displayBurgerOrder(int burgers, double price) {
  stdout.write("Your order: ");
  for (int i = 1; i <= burgers; i++) {
    stdout.write('🍔');
  }
  stdout.write("\nTotal: \$");
  stdout.write("${(price * burgers).toStringAsFixed(2)}");
  print(''); // Newline for clean output
}

// Calculates how many whole items (burgers) can be purchased with the given budget,
// demonstrating integer division (~/) logic.
int howManyBurgers(double burgerPrice, int pounds, int pennies) {
  double money = pounds + pennies / 100; // Combine budget into a single double
  return money ~/ burgerPrice; // Integer division operator (truncates decimal part)
}