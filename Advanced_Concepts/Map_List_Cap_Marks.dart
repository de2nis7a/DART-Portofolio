/// This file demonstrates iteration and in-place modification of complex collections
/// using a Map where the values are Lists (Map<String, List<int>>).
///
/// The 'capMarks' function iterates through all module lists and modifies (caps)
/// any mark below 40 to a score of 40 directly within the original Map object.
/// This showcases working with mutable data structures passed by reference.

Map<String, List<int>> capMarks(String module, Map<String, List<int>> modulesMarks){
  for (String module in modulesMarks.keys){
    for(int i = 0;  i < modulesMarks[module]!.length; i++){
      if (modulesMarks[module]![i] < 40){
        modulesMarks[module]![i] = 40;
      }
    }
  }
  return modulesMarks;
}

void main(){
  print(capMarks('prog', {'prog': [10, 67, 7, 99]}));
}