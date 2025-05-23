import 'dart:io';

void main(){
  stdout.write('Enter length of your array : ');
  int length  = int.parse(stdin.readLineSync()!);

  List<String> stringList = [];

  for(int i=0;i<length;i++){
    stdout.write('Enter your $i th element : ');
    String str  = stdin.readLineSync()!;
    stringList.add(str);
  }

  print('Your list is : $stringList');
}
