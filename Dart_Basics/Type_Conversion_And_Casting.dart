/// This file demonstrates explicit type casting and conversion methods
/// between standard Dart types: 'int', 'double', and 'String'.
/// It illustrates various conversion techniques, including truncation (.toInt()),
/// rounding (.round()), and parsing (int.parse/double.parse).

void typeConversion() {
  int i = 5;
  double d = 10.65;

  // convert from double to integer
  int dAsInt = d.toInt();
  int dFloor = d.floor();
  int dCeil = d.ceil();
  int dRounded = d.round();
  print("dAsInt: $dAsInt, dFloor: $dFloor, dCeil: $dCeil, dRounded: $dRounded");

  // convert from int to double
  double iAsDouble = i.toDouble();
  print("iAsDouble: $iAsDouble");


  // convert from int or double to String
  String iAsString = i.toString();
  String dAsString = d.toString();
  String dAsFixed = d.toStringAsFixed(1);
  print("iAsString: $iAsString, dAsString: $dAsString, dAsFixed: $dAsFixed");


  // convert from String to int or double
  i = int.parse(iAsString);
  d = double.parse(dAsString);
  print("i: $i, d: $d");
}

void main(){
    typeConversion();
}