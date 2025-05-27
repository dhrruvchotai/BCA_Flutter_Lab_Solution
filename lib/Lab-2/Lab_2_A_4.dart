import 'dart:io';

void main(){
  //take distance as a meter
  stdout.write('Enter in meter: ');
  int num = int.parse(stdin.readLineSync()!);

  //print it in a foot
  stdout.write(num*3.2804);
}
