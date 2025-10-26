/// This file implements a simple filtering function, 'removeMilk', 
/// which iterates over a Set of food items and returns a new Set containing 
/// only the items whose names do NOT contain the substring "milk".
///
/// It demonstrates:
/// - **Set Manipulation:** Creating and populating a new Set during iteration.
/// - **String Logic:** Using the efficient 'String.contains()' method for filtering.
/// - **Immutability Principle:** Creating a new Set instead of modifying the original one.

Set<String> removeMilk(Set<String> food){
  Set<String> returnFood = {};
  for (String foodElem in food){
    if(foodElem.contains("milk") == false){
      returnFood.add(foodElem);
    }
  }
  return returnFood;
}

void main(){
  print(removeMilk({'milkshake', 'yoghurt', 'burger', 'banana milk'}));
}

//Set<String> removeMilkModern(Set<String> food) {
//return food.where((foodElem) => !foodElem.contains("milk")).toSet();
//}