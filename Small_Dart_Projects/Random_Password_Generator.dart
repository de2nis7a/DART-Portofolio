/// This file implements a basic random password generator using the ASCII character set.
///
/// It demonstrates:
/// - **Random Number Generation:** Uses 'dart:math' to select random ASCII codes.
/// - **ASCII Conversion:** Converts the random integer values back into characters
///   using 'String.fromCharCodes()'.
/// - **Optional Parameters:** The 'password' function uses an optional parameter 
///   ('characters = 8') and includes a minimum length guarantee (enforcing 8 characters).
/// - **Looping and String Building:** Uses a 'for' loop to construct the final string.

import 'dart:math';

void password({int characters = 8}){
    String password = "";
    
    // Ensure the password has a minimum length of 8 characters.
    if (characters < 8){
        characters = 8;
    }
    
    // Generate characters based on ASCII range 33 (Exclamation Mark) to 126 (Tilde).
    for (int i = 1; i <= characters; i++){
        // Random().nextInt(94) generates numbers from 0 to 93. Adding 33 gives 33 to 126.
        int intValue = Random().nextInt(94) + 33; 
        password += String.fromCharCodes([intValue]);
    }
    
    print("Generated Password ($characters chars): $password");
}

void main(){
    print('--- Testing Password Generator ---');
    
    // 1. Default Call: Uses the implicit length (8 characters).
    password();
    
    // 2. Short Call: Tries to set length to 4, but is enforced to 8 by the 'if' statement.
    password(characters: 4);
    
    // 3. Custom Call: Generates a longer password (e.g., 12 characters).
    password(characters: 12);
}