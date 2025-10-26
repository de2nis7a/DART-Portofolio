/// This file implements a basic, reversible Roman Numeral converter (1-10) using 'switch' statements.
///
/// It showcases:
/// - **Reversible Functions:** Two functions performing inverse operations: 'romanToInt' and 'intToRoman'.
/// - **Switch Statement for Mapping:** Efficiently maps input values (String or int) to output values.
/// - **Exception Handling:** Uses 'throw Exception' in the 'default' case of both switches
///   to manage invalid input, and the 'main' function demonstrates safe execution
///   using a 'try-catch' block.

int romanToInt(String roman){
    switch(roman){
        case 'I':
        return 1;
        case 'II':
        return 2;
        case 'III':
        return 3;
        case 'IV':
        return 4;
        case 'V':
        return 5;
        case 'VI':
        return 6;
        case 'VII':
        return 7;
        case 'VIII':
        return 8;
        case 'IX':
        return 9;
        case 'X':
        return 10;
        default:
        throw Exception("Invalid number");
    }
}

String intToRoman(int n){
    switch(n){
        case 1:
        return 'I';
        case 2:
        return 'II';
        case 3:
        return 'III';
        case 4:
        return 'IV';
        case 5:
        return 'V';
        case 6:
        return 'VI';
        case 7:
        return 'VII';
        case 8:
        return 'VIII';
        case 9:
        return 'IX';
        case 10:
        return 'X';
        default:
        throw Exception("Invalid number");
    }
}

void main(){
    print('--- Testing Valid Conversions (1-10) ---');
    print("5 -> ${intToRoman(5)}");       // Output: V
    print("X -> ${romanToInt('X')}");     // Output: 10
    print("IV -> ${romanToInt('IV')}");   // Output: 4

    print('\n--- Testing Exception Handling ---');

    try{
        print("11 -> ${intToRoman(11)}"); 
    }
    catch(e){
        print('Error caught: ${e.toString().replaceAll('Exception: ', '')}');
    }
    
    try{
        print("g -> ${romanToInt('g')}"); 
    }
    catch(e){
        print('Error caught: ${e.toString().replaceAll('Exception: ', '')}');
    }
}