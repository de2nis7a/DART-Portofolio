/// This file implements a practical utility function, 'snakeToCamel', which converts
/// a string formatted in snake_case (e.g., 'hello_world') into camelCase (e.g., 'helloWorld').
///
/// It demonstrates:
/// - **String Splitting:** Using 'split('_')' to break the input into words.
/// - **List Iteration:** Looping through the words starting from the second element.
/// - **String Manipulation:** Combining 'toUpperCase()' for the first letter and 
///   'substring(1)' for the rest of the word to achieve capitalization.
/// - **String Joining:** Using 'join()' to merge the list back into a single string.

String snakeToCamel(String snake){
  List<String> words = snake.split('_');
  for (int i = 1; i < words.length; i++){
    words[i] = words[i][0].toUpperCase() + words[i].substring(1);
  }
  return words.join();
}


void main(){
  print(snakeToCamel("col_row_main"));
}