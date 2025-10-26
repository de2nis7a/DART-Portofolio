/// This file implements a simple function, 'isValidEmail', to check if a string 
/// matches a specific, narrow email format required by a fictional academic system.
///
/// It demonstrates:
/// - **String Validation:** Using 'startsWith()' and 'endsWith()' methods for basic format checking.
/// - **Boolean Logic:** Returning true or false based on the conditional check.
/// - **Concise Syntax:** The 'if-else' block can be simplified into a single return statement 
///   for more idiomatic Dart code (see suggested improvement).


bool isValidEmail(String email) => 
  email.startsWith('up') && email.endsWith('@myport.ac.uk');

void main(){
  print(isValidEmail('up1234567@myport.ac.uk'));
  print(isValidEmail('578'));
  //print(isValidEmail(5789)); - error
}

