/// This file demonstrates the creation of a simple, reusable function to perform
/// a basic mathematical calculation (speed = distance / time).
/// It showcases function definition, passing double parameters, and performing
/// arithmetic operations.

void speedCalculator(double distance, double time) {
  // Calculates speed and prints the result, formatted to 2 decimal places.
  double speed = distance / time;
  print('Speed: ${speed.toStringAsFixed(2)} m/s');
}

void main() {
  // Example: Calculating the speed of the 100m sprint world record holder.
  double distance = 100; // meters
  double time = 9.58;   // seconds (Usain Bolt's record)
  speedCalculator(distance, time); 
}