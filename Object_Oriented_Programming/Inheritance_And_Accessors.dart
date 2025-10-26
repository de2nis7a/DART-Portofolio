/// This file demonstrates core advanced Object-Oriented Programming (OOP) concepts.
///
/// It showcases:
/// - **Inheritance:** The 'Student' class extends the 'Person' class (defined here for context).
/// - **Super Constructor Call:** The 'Student' constructor correctly initializes the parent 
///   class using ': super(name, age)'.
/// - **Getters and Setters (Accessors/Mutators):** Implements custom 'get' and 'set' methods 
///   for '_phoneNumber' to control reading (e.g., masking) and writing (e.g., validation) access.
/// - **Method Overriding:** The 'toString()' method is redefined in 'Student' for custom display.
/// - **Parent Method Access:** Uses 'super.isAdult()' to call a method from the parent class.


class Person {
  String name = 'unknown';
  int age = 0;

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

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

  bool isAdult(){
    if (age >= 18){
      return true;
    }
    else{
      return false;}
  }


  String toString() {
    return 'Person(name: $name, age: $age, isAdult: ${isAdult()})';
  }
}


class Student extends Person {
  int level = 4;
  String _phoneNumber;

  Student(String name, int age, this.level, this._phoneNumber) : super(name, age);

  void graduate() {
    level++;
  }

  String greet() => 'Hello, $name!';

  String get phoneNumber {
    String lastFourDigits = _phoneNumber.substring(6);
    return '***-***-$lastFourDigits';
  }

  void set phoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      _phoneNumber = phoneNumber;
    }
  }

  String toString() => 'Strudent(name: $name, age: $age, level: $level, isAdult: ${super.isAdult()})';
}

void main(){
  Student eu = Student('den', 20, 4, '1234567890');
  print(eu);
}