/// This function showcases complex range checking and multi-condition evaluation
/// using nested 'if-else if' structures with logical operators (&&, ||).
/// It simulates a simple health monitoring system by checking if a measured
/// heart rate (bpm) is considered high based on a specified age range.#

void main(){
  heartMonitor(25, 160);
}

void heartMonitor(int age, int bpm){
  if(0<= age && age <= 20 && bpm >= 170){
  print("High heart rate for 0-20!");
  }
  else if(21 <= age && age <= 40 && bpm >= 155){
  print("High heart rate for 21-40!");
  }
  else if(41 <= age && age <= 60 && bpm >= 140){
  print("High heart rate for 41-60!");
  }
  else if(61 <= age && age <= 80 && bpm >= 130){
  print("High heart rate for 61-80!");
  }
  else if(81 <= age && bpm >= 100){
  print("High heart rate for 81+!");
  }
  else {
    print("Good heart rate!");}
}
