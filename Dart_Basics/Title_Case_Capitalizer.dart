/// This file implements a custom 'capitalize' function to convert a sentence
/// into Title Case format.
///
/// The function demonstrates:
/// - **String Iteration:** Using a 'for' loop to process the sentence character by character.
/// - **Conditional Logic:** Using 'if-else if-else' to determine whether a character
///   should be uppercase (start of sentence or after a space) or lowercase (all others).
/// - **String Building:** Concatenating individual characters to build the new string.

void main(){
  print(capitalize("inSSIDer gfDc"));
}

String capitalize(String sentence) {
  final buffer = StringBuffer(); 
  bool capitalizeNext = true;

  for (int i = 0; i < sentence.length; i++) {
    String char = sentence[i];

    if (capitalizeNext) {
      buffer.write(char.toUpperCase());
      capitalizeNext = false;
    } else {
      buffer.write(char.toLowerCase());
    }

    if (char == ' ') {
      capitalizeNext = true;
    }
  }
  return buffer.toString();
}