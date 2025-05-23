import 'dart:io';
import 'dart:math';

void main(){

  print("Enter number - ");
  int number = int.parse(stdin.readLineSync()!);
  int sum_of_even_number = 0;
  int sum_of_odd_number = 0;

  while(number != 0){

    if(number  % 2 == 0 && number  > 0){
       sum_of_even_number += number ;
    }

    else if ( number  % 2 != 0 && number  < 0){
      sum_of_odd_number += number ;
    }

    print("Enter number - ");
    number = int.parse(stdin.readLineSync()!);
  }

  print("sum of even number is-${sum_of_even_number}");
  print("sum of odd number is-${sum_of_odd_number}");
}