/// This file demonstrates professional-level logic including exception handling (Error Handling).
/// The 'basicCalculator' function uses a switch statement for different operations,
/// and 'throws Exception' for unknown operations. The 'main' function shows
/// how to safely call this function using a 'try-catch' block to prevent runtime crashes.

void main(){
    try{
      print(basicCalculator(11, 10, "b"));}
      on Exception catch(e){
        print(e);
      }
}

double basicCalculator(int n1, int n2, String operation){
  switch(operation){
  case "add":
  return (n1 + n2).toDouble();
  case "substract":
  return (n1 - n2).toDouble();
  case "multiply":
  return (n1 * n2).toDouble();
  case "divide":
  return (n1 / n2).toDouble();
  default:
     throw Exception('Unknown Operation');
}
}
