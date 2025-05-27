
import 'dart:io';

void main(){
  //take input as name and age
  stdout.write('Enter your name : ');
  String name = stdin.readLineSync()!;

  stdout.write('Enter your age  : ');
  String age = stdin.readLineSync()!;

  //concat both name and age
  String result = name + age;
  print(result);

}
