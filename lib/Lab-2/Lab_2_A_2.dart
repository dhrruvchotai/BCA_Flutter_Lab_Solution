import 'dart:io';

void main(){
  stdout.write("Enter temperature : ");
  //take one input of temperature
  int temp = int.parse(stdin.readLineSync()!);

  print(((temp-32)*5)/9);
}
