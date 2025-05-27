import 'dart:io';

void main(){
  // take two input for addition
  stdout.write("Enter number 1 : ");
  int num1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter number 2 : ");
  int num2 = int.parse(stdin.readLineSync()!);

  //print their addition
  print("The ans is ${num1+num2}");
}
