import 'dart:io';

void main() {
  print("Enter how many numbers you want to input: ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];

  for (int i = 0; i < n; i++) {
    stdout.write("Enter number ${i + 1}: ");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

 
  int sum = 0;
  for (int num in numbers) {
    if (num % 3 == 0 || num % 5 == 0) {
      sum += num;
    }
  }

  print("Sum of numbers divisible by 3 or 5: $sum");
}

//print adds \n at the end
//whereas stdout.write does not add \n at the end
