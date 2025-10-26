/// This file implements a custom 'capitalize' function to ensure a single word
/// is formatted in Proper Case (or Sentence Case for a word).
///
/// The function demonstrates:
/// - **String Iteration:** Using a 'for' loop to process the word character by character.
/// - **Conditional Logic:** Applying 'toUpperCase()' only to the first character
///   (when i == 0) and 'toLowerCase()' to all subsequent characters.
/// - **String Building:** Concatenating individual characters to build the resulting string.

String capitalize(String word){
  String wordNew = "";
  for(int i = 0; i < word.length; i++){
    if(i == 0){
      wordNew = word[i].toUpperCase();
    }
    else{
      wordNew += word[i].toLowerCase();}
}
return wordNew;
}

void main(){
  print(capitalize("inSSIDer"));
}