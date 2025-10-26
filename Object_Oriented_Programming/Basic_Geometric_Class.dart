/// This file defines the 'Rectangle' class, a fundamental example of OOP 
/// used to model a 2D geometric shape with position and dimensions.
///
/// It showcases:
/// - **Concise Constructor:** Using positional parameters and 'this.' for field initialization.
/// - **State and Behavior:** Encapsulating properties (x, y, width, length) and defining methods 
///   ('getArea', 'getPerimeter') that act on the object's state.
/// - **Method Overriding:** A custom 'toString()' method for detailed and calculated output.
///
/// NOTE: The perimeter calculation (x * 2 + y * 2) is currently based on coordinates 
/// rather than the 'width' and 'length' fields, which should be corrected for accuracy.

class Rectangle{
  double x;
  double y;
  double width;
  double length;
  Rectangle(this.x, this.y, this.width, this.length);

  double getArea() => width * length;
  double getPerimeter() => width * 2 + length * 2;

//length = x = orizontal
//width = height = y = vertical

  String toString() => 'Rectangle with x:$x and y:$y and width = $width and length = $length have area = ${getArea()} and perimeter = ${getPerimeter()}';

}

void main(){
  Rectangle rect = Rectangle(5, 3, 5, 3);
  print(rect);
}