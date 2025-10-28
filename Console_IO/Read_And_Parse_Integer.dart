/// This file demonstrates basic user input handling using the 'dart:io' library.
/// The function asks the user for a student number, reads the input as a String,
/// and explicitly converts (parses) it into an integer ('int.parse()') before output.
/// The bang operator '!' is used to assert that the input is non-null.
import 'dart:io';

void askForStudentNumberRobust() {
  print("What is your student number?");
  String? input = stdin.readLineSync();
  
  if (input == null || input.isEmpty) {
    print("Error: No input provided.");
    return;
  }
  
  try {
    int studentNumber = int.parse(input);
    print("Your student number is $studentNumber");
  } catch (e) {
    print("Error: Invalid number format. Please enter only digits.");
  }
}