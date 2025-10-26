/// This file implements a simple number guessing game that runs in the console.
///
/// It demonstrates several key Dart concepts:
/// - **Random Number Generation:** Uses 'dart:math' to select a secret number.
/// - **User Input and Loops:** Uses 'dart:io' for continuous input and a 'while' loop
///   to keep the game running until the correct number is guessed.
/// - **Function Modularity:** Separates the hint logic into a dedicated function.
///
/// NOTE: For simplicity, it uses the bang operator '!' and lacks robust try-catch
/// error handling for non-numeric user input.

import 'dart:math';
import 'dart:io';

// --- MAIN GAME LOGIC ---
void main() {
  // Generates a random integer between 1 and 100 (inclusive).
  final intValue = Random().nextInt(100) + 1;
  int? guessInt;

  print('Welcome to the Number Guessing Game!');
  
  // Loop to handle all game logic: input, parsing, and guessing.
  while (guessInt != intValue) {
    stdout.write('Enter your guess (1-100): ');
    String? input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      print('Please enter a number.');
      continue;
    }

    try {
      // Attempt to parse the input to an integer.
      guessInt = int.parse(input.trim());

      // If parsing is successful, check the hint.
      if (guessInt != intValue) {
        hint(intValue, guessInt);
      }
      
    } catch (e) {
      // Catch error if input is not a valid integer.
      print('Invalid input! Please enter a whole number.');
      guessInt = null; // Keeps the loop running
    }
  }

  print('\n🎉 Right number! You guessed it: $intValue');
}

// --- HINT LOGIC ---
void hint(int correctValue, int userGuess) {
  if (correctValue < userGuess) {
    print("Too high. ⬇️");
  } else {
    print("Too low. ⬆️");
  }
}