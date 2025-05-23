import 'dart:io';
import 'dart:math';
void main(){
  print("Enter a n - ");
  int n = int.parse(stdin.readLineSync()!);

  if(check(n) == 1){
    print("Prime");
  }
  else{
    print("Not a prime");
  }
}

int check(int n){

  bool isPrime = true;

  for(int i = 2;i<=sqrt(n);i++){
    if(n % i == 0){
      isPrime = false;
      break;
    }
  }

  if(!isPrime){
    return 0;
  }
  else{
    return 1;
  }
}

