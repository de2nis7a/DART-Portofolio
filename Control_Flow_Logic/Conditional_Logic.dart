/// This file demonstrates various conditional structures (if/else and switch statements)
/// used for decision-making logic in Dart.
/// It includes finding the maximum of two numbers, determining days in a month (using
/// the less common 'case ||' syntax), and providing time-based custom greetings.

void main(){
    print(maxNumbers(14,10));
    print(daysInMonth(4));
    customisedGreeting(0);
}

int maxNumbers(int nr1, int nr2) {
  if (nr1 > nr2) return nr1;
  return nr2;
}


int daysInMonth(int month){
    switch(month){
    case 1 || 3 || 5 || 7 || 8 || 10 || 12 :
    return 31;
    case 2:
    return 28;
    case 4 || 6 || 9 || 11:
    return 30;
    default:
    return 0;
    }
}


void customisedGreeting(int time){
  if (time >= 500 && time <= 1200){
    print("Have a great morning!");
  }
  else if (time >= 1201 && time <= 1800){
    print("Have a great day!");
  }
  else if(time >= 1801 && time <= 2400){
    print("Have a nice evening!");
  }
  else if(time >= 001 && time <= 459){
    print("Have a good night!");
  }
  else{
    print("Unknown time!");
  }
}
