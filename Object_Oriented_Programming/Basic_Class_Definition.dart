/// This file defines a basic 'Person' class to demonstrate fundamental concepts 
/// of Object-Oriented Programming (OOP) in Dart.
///
/// It showcases:
/// - **Class Definition:** Defining properties ('name', 'age').
/// - **Constructor:** Explicitly initializing properties using 'this.'.
/// - **Instance Methods:** Methods like 'ageNextYear', 'hasValidName', and 'isAdult'
///   that operate on the object's state.
/// - **Method Overriding:** Overriding the 'toString()' method for custom object representation.

class Person {
  String name = 'unknown';
  int age = 0;

  Person(this.name, this.age);

  int ageNextYear() {
    return age + 1;
  }

  bool hasValidName() {
    if (name.length > 2 && name.length < 100) {
      return true;
    } else {
      return false;
    }
  }

  bool isAdult() => age >= 18;

  String toString() {
    return 'Person(name: $name, age: $age, isAdult: ${isAdult()})';
  }
}

void main(){
  Person ana = Person("Ana", 22);
  print(ana);
}
