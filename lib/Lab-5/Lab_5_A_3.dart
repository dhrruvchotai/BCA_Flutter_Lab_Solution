import 'dart:io';

void main() {
  print("Enter number of terms: ");
  int number = int.parse(stdin.readLineSync()!);

  fibonacci(number);
}

void fibonacci(int n) {
  int a = 0;
  int b = 1;

  if (n <= 0) {
    print("Please enter a positive integer.");
    return;
  }

  print("Fibonacci Series:");
  for (int i = 0; i < n; i++) {
    print(a);
    int temp = a + b;
    a = b;
    b = temp;
  }
}
