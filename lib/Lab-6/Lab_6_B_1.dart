import 'dart:io';

void main(){
  stdout.write('Enter length of your array : ');
  int length  = int.parse(stdin.readLineSync()!);

  List<dynamic> lst = [];

  for(int i=0;i<length;i++){
    stdout.write('Enter your $i th element : ');
    var input  = stdin.readLineSync()!;
    lst.add(input);
  }

  print('Your list is : $lst');
}
