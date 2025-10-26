/// This file implements a simple validation function, 'checkExpenses', 
/// that verifies if all expenditures in a list remain below a specified maximum budget.
///
/// It demonstrates:
/// - **List Iteration:** Looping through a collection of double values.
/// - **Early Return/Exit:** Using 'return false' immediately upon finding the first 
///   expense that exceeds the maximum, which is an efficient way to break loops 
///   when validation fails.

bool checkExpenses(List<double> expenditures, double max){
    for(int i = 0; i < expenditures.length; i++){
      if (max < expenditures[i]){
        return false;}}
      return true;
}

void main(){
  print(checkExpenses([12.8, 13, 11, 72], 10));
}