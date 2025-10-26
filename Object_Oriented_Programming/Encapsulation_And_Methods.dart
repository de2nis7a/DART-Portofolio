/// This file defines the 'Car' class, showcasing key OOP concepts related to object behavior.
///
/// It demonstrates:
/// - **Concise Constructor:** Using 'this.' syntax (Car(this.colour, this.speed)) for field initialization.
/// - **Mutator Methods:** Functions like 'accelerate' and 'brake' that change the object's internal state ('speed').
/// - **Accessor Methods:** The 'distance' method, which calculates and returns a value based on the current state.
/// - **Method Overriding:** Custom implementation of the 'toString()' method.

class Car {
  String colour;
  double speed;

  Car(this.colour, this.speed);

  void accelerate(double inc) {
    speed += inc;
  }

  void brake() {
    speed = 0;
  }

  double distance(double duration) => duration * speed;

  String toString() {
    return 'Car(colour: $colour, speed: $speed)';
  }
}


void main(){
  Car myCar = Car("red", 50.00);
  print(myCar.distance(100));
}