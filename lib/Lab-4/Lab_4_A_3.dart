import 'dart:io';
import 'dart:math';

void main(){
  print("Enter number - ");
  int number= int.parse(stdin.readLineSync()!);

  bool isPrime = true;

  //we can also use number/2 instant of sqrt(number)
  for(int i = 2;i<=sqrt(number);i++){
    if(number % i == 0){
      isPrime = false;
      break;
    }
  }

  if(!isPrime){
    print("Given number is not a Prime number.");
  }
  else{
    print("Given number is a Prime");
  }
}