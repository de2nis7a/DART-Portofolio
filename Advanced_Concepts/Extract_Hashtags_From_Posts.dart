/// This file implements a function to parse a list of text posts and extract
/// all unique hashtags into a Dart Set.
///
/// It demonstrates:
/// - **Set Data Structure:** Uses 'Set<String>' to automatically ensure all extracted 
///   hashtags are unique.
/// - **Nested Iteration:** Loops through the list of posts and then splits each post 
///   into individual words for processing.
/// - **String Logic:** Uses 'word.startsWith('#')' to identify valid hashtags.

Set<String> extractHashtags(List<String> posts) {
  Set<String> hashtags = {};
  for (String post in posts) {
    for (String word in post.split(' ')) {
      if (word.startsWith('#')) {
        hashtags.add(word);
      }
    }
  }
  return hashtags;
}

void main(){
  print(extractHashtags(["Learning #Dart and #Flutter is fun!"]));
}