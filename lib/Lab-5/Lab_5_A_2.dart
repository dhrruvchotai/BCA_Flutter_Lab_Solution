import 'dart:io';
void main(){
  print("Enter number one - ");
  int n1 = int.parse(stdin.readLineSync()!);

  print("Enter rate of number two - ");
  int n2 = int.parse(stdin.readLineSync()!);

  maxOfTwo(n1,n2);
}


void maxOfTwo(int n1,int n2){
  if(n1 > n2){
    print("$n1 is largest");
  }
  else{
    print("$n2 is largest");
  }
}
