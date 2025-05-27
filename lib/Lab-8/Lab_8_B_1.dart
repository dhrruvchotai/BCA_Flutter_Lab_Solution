import 'dart:io';
void main() {
  Map<String, String> phonebook = {};
  print("How many contacts do you want to add?");
  int count = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < count; i++) {
    stdout.write("Enter name: ");
    String name = stdin.readLineSync()!;
    stdout.write("Enter phone number: ");
    String phone = stdin.readLineSync()!;
    phonebook[name] = phone;
  }
  print("\n--- Phonebook ---");
  phonebook.forEach((name, phone) {
    print("$name : $phone");
  });
}
