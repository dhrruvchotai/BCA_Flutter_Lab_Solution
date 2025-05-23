import 'dart:io';

void main(){

  print("Enter number - ");

  
  int number_1 = int.parse(stdin.readLineSync()!);

  int factorial = 1;
  for(int i = 1;i<=number_1;i++){
    factorial = factorial * i;
  }
  print(factorial);
}