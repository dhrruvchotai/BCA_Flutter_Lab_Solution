import 'dart:io';
void main() {
  List<int> numbers = [];
  print("Enter 5 numbers:");
  for (int i = 0; i < 5; i++) {
    stdout.write("Number ${i + 1}: ");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  numbers.sort();
  print("\nNumbers in increasing order:");
  print(numbers);
}
