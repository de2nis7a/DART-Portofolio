/// This file implements a functional command-line calculator that processes
/// operations and numbers passed as arguments to the 'main' function.
///
/// It showcases:
/// - **CLI Argument Handling:** Reading data from the 'arguments' list.
/// - **Exception Handling:** Using 'throw Exception' within a 'switch' statement
///   to manage unsupported operations, which is crucial for robust software.
/// - **Type Conversion:** Explicitly converting integer results to a double for the return type.


import 'dart:io'; 

double basicCalculator(String operation, int n1, int n2) {
  switch (operation) {
    case "add":
      return (n1 + n2).toDouble();
    case "subtract": 
      return (n1 - n2).toDouble();
    case "multiply":
      return (n1 * n2).toDouble();
    case "divide":
      if (n2 == 0) {
        throw Exception('Error: Cannot divide by zero.');
      }
      return (n1 / n2).toDouble();
    default:
      throw Exception('Error: Unknown operation "$operation". Expected: add, subtract, multiply, or divide.');
  }
}

void main(List<String> arguments) {
  if (arguments.length != 3) {
    print('Usage: dart <filename.dart> <operation> <number1> <number2>');
    print('Example: dart 04_CLI_Argument_Calculator.dart add 5 10');
    exit(1); 
  }

  String operation = arguments[0];
  int? n1, n2;

  try {
    n1 = int.parse(arguments[1]);
    n2 = int.parse(arguments[2]);
  } catch (e) {
    print('Error: Both numbers must be valid integers.');
    exit(1);
  }

  try {
    double result = basicCalculator(operation, n1, n2);
    print('Result: ${result.toStringAsFixed(2)}');
  } catch (e) {
    print(e.toString().replaceAll('Exception: ', '')); 
    exit(1);
  }
}