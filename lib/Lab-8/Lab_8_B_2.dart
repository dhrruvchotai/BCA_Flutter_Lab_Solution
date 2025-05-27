import 'dart:io';

class Friend {
  String name;
  int age;
  String phone;
  Friend({required this.name, required this.age, required this.phone});
  void display() {
    print("Name : $name");
    print("Age  : $age");
    print("Phone: $phone");
  }
}

void main() {
  Map<String, Friend> friends = {
    "Alice": Friend(name: "Alice", age: 25, phone: "555-1234"),
    "Bob": Friend(name: "Bob", age: 30, phone: "555-5678"),
    "Charlie": Friend(name: "Charlie", age: 28, phone: "555-8765"),
  };

  stdout.write("Enter friend's name to search: ");
  String searchName = stdin.readLineSync()!;
  if (friends.containsKey(searchName)) {
    print("\nFriend details:");
    friends[searchName]!.display();
  } else {
    print("Friend named '$searchName' not found.");
  }
}
