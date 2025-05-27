import 'dart:io';

void main() {
  //take five input numbers
  stdout.write('Enter your number 1: ');
  int sub1 = int.parse(stdin.readLineSync()!);
  stdout.write('Enter your number 2: ');
  int sub2 = int.parse(stdin.readLineSync()!);
  stdout.write('Enter your number 3: ');
  int sub3 = int.parse(stdin.readLineSync()!);
  stdout.write('Enter your number 4: ');
  int sub4 = int.parse(stdin.readLineSync()!);
  stdout.write('Enter your number 5: ');
  int sub5 = int.parse(stdin.readLineSync()!);

  //print their percentage
  print("The percentage is ${(sub1 + sub2 + sub3 + sub4 + sub5) / 5}");
}
