/// This file illustrates various ways to manipulate and format strings in Dart.
/// It includes returning multi-language strings, using string concatenation ('+'), 
/// and modern string interpolation ('$'). It also demonstrates simple loop-like 
/// output formatting using string multiplication ('*' operator).

void birthdayMessage1(int age) {
  // Uses string concatenation ('+') and explicit type conversion (.toString()).
  print("I'm " + age.toString() + " years old.");
  // Uses string multiplication to print 'age' number of candles.
  print('🕯️ ' * age);
}

void birthdayMessage(String name, int ageLastYear) {
  // Shows mixing string concatenation and addition.
  print("Happy " + (ageLastYear + 1).toString() + "th birthday, " + name + "!");
  
  // Shows the preferred, modern method: String Interpolation.
  print("Happy ${ageLastYear + 1}th birthday, $name!"); 
}

String getGreetings() {
  // Shows a string containing various international characters and emojis.
  String arabic = 'مرحبا';
  String hindi = 'नमस्ते';
  String russian = 'Привет';
  String chinese = '你好';
  String emoji = '👋';
  return '$arabic, $hindi, $russian, $chinese, $emoji';
}

void main() {
  // Test 1: Simple Birthday Message
  birthdayMessage1(25);
  print('---');
  
  // Test 2: Interpolated Birthday Message
  birthdayMessage('Denisa', 24);
  print('---');
  
  // Test 3: Multi-language Greetings
  print(getGreetings());
}