import 'dart:io';
import 'dart:math';

void main(){
  print("Enter a String-");
  String str = (stdin.readLineSync()!);
  String reversed_string = "";

  for(int i=str.length-1;i>=0;i--){
    reversed_string += str[i];
  }

  print(reversed_string);
  print(str.split('').reversed.join());
  

}