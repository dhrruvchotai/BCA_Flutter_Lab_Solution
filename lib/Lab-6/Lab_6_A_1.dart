import 'dart:io';

void main(){

  stdout.write('Enter length of your array : ');
  int length  = int.parse(stdin.readLineSync()!);

  List<int> lst = [];

  for(int i=0;i<length;i++){
    stdout.write('Enter your $i th element : ');
    int temp  = int.parse(stdin.readLineSync()!);
    lst.add(temp);
  }

  print('your list is : $lst');

}

