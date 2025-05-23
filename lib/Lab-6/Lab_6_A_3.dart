import 'dart:io';

void main() {

  //take the length of your array
  stdout.write('Enter length of your array: ');
  int length = int.parse(stdin.readLineSync()!);

  //initialize a array and a total sum
  List<double> lst = [];
  double sum = 0.0;

  //form a loop to the length that take a input which add in list and sum
  for (int i = 0; i < length; i++) {
    stdout.write('Enter your ${i+1}-th element: ');
    double num = double.parse(stdin.readLineSync()!);
    lst.add(num);
    sum += num;
  }

  //print it
  print('Your list is: $lst');
  print('Your sum is: ${sum.toStringAsFixed(2)}');
}

