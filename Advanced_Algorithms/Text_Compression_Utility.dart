/// This file implements a proof-of-concept utility for basic text compression/decompression.
///
/// The 'compress' function identifies the 'n' most frequent words (subsequences) 
/// in a multi-line text and replaces them with metadata detailing their original 
/// line and column coordinates (line:position).
///
/// The 'decompress' function attempts to rebuild the original text using this metadata.
///
/// Key Concepts Demonstrated:
/// - **Map and List Manipulation:** Complex usage of nested collections for tracking data.
/// - **String Parsing:** Splitting text into lines, words, and coordinates.
/// - **Algorithmic Thinking:** Implementing a basic compression/decompression scheme.
///
/// NOTE on decompress: This function has a known bug related to index recalculation:
/// adding a word to a line shifts the starting positions of subsequent words, 
/// which is not correctly accounted for in the current implementation.

// gaseste cel mult n subsiruri repetate in text
// ex „hello world hello world” și n = 1, alegi doar un subșir repetat — de exemplu „hello”.
// la final Subșirul în sine (de ex: "hello") si toate coordonatele unde a apărut (adică: linia + poziția în linie).
String compress(int n, String text) {
  List<String> lines = text.split('\n');
  Map<String, List<String>> found = {}; // ex: "dart" => ["1:4", "2:6"]
  Map<String, int> counts = {};

  for (int i = 0; i < lines.length; i++) {
    List<String> words = lines[i].split(' ');
    for (int j = 0; j < words.length; j++) {
      String word = words[j];
      if (!counts.containsKey(word)) {
        counts[word] = 0;
        found[word] = [];
      }
      counts[word] = counts[word]! + 1;
      found[word]!.add('${i + 1}:${lines[i].indexOf(word)}');
    }
  }
  List<String> repeatedWords = [];
  for (String word in counts.keys) {
    if (counts[word]! >= 2) {
      repeatedWords.add(word);
    }
    if (repeatedWords.length == n) break;
  }
  for (int i = 0; i < lines.length; i++) {
    List<String> words = lines[i].split(' ');
    List<String> cleanedWords = [];
    for (String word in words) {
      if (!repeatedWords.contains(word) && word != '') {
        cleanedWords.add(word);
      }
    }
    lines[i] = cleanedWords.join(' ');
  }

  for (String word in repeatedWords) {
    lines.add('$word: ${found[word]!.join(', ')}');
  }

  return lines.join('\n');
}



void main(){
//String text = '''Learning Dart is fun
//Flutter and is Dart are powerful
//Dart makes Flutter is development fast''';
//print(compress(2, text));
String compressedText = '''Learning fun
Flutter and are powerful
makes Flutter development fast
Dart: 1:9, 2:15, 3:0
is: 1:14, 2:12, 3:19''';
print(decompress(compressedText));
}


String decompress(String text) {
  List<String> lines = text.split('\n');
  List<String> metadataLines = [];
  List<String> resultLines = [];
  for (int i = 0; i < lines.length; i++) {
    if (lines[i].contains(':')) {
      metadataLines.add(lines[i]);
    } else {
      resultLines.add(lines[i]);
    }
  }
  for (var metadataLine in metadataLines) {
    List<String> parts = metadataLine.split(' ');
    String word = parts[0].replaceAll(':', ''); // Cuvântul care a fost repetat
    List<String> coordinates = parts.sublist(1);
    for (var coordinate in coordinates) {
      List<String> coordParts = coordinate.split(':');
      int lineIndex = int.parse(coordParts[0].replaceAll(',', '')) - 1; // Liniile sunt indexate de la 1, așa că scădem 1
      int wordIndex = int.parse(coordParts[1].replaceAll(',', ''));
      resultLines[lineIndex] = resultLines[lineIndex].substring(0, wordIndex) + word + ' ' + resultLines[lineIndex].substring(wordIndex);
    }
  }
  return resultLines.join('\n');
}

//nevoie imbunatatire; la decompress de ex nu ia noua lungime dupa ce se adauga un cuvant inaintea urmatorului; ramane ca si cum nu s a adaugat nimic