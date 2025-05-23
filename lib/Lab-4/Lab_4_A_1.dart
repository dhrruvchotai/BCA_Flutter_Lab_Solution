import 'dart:io';

void main(){
  print("Enter range-");
  print("Enter first number-");
  int number_1 = int.parse(stdin.readLineSync()!);

  print("Enter second number-");
  int number_2 = int.parse(stdin.readLineSync()!);

  for(int i = number_1;i<=number_2;i++){
    if(i % 2 == 0 && i % 3 != 0){
      print(i);
    }
  }
}