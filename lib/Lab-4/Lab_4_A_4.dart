import 'dart:io';
import 'dart:math';

void main(){
  print("Enter number-");
  double number = double.parse(stdin.readLineSync()!);

  double original_number = number;
  double last_digit = 0;
  double reversed_number = 0;

  while(number > 0){
    last_digit = number % 10;
    reversed_number = (reversed_number * 10) + last_digit;
    number = number / 10;

  }
  print(reversed_number);
  print(original_number);
}