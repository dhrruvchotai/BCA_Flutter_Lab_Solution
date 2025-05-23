class Person {
  String name;
  int age;
  String hobby;

  Person({required this.name, required this.age, required this.hobby});
}

// Function to add a Person to the list
void addPerson(List<dynamic> list, String name, int age, String hobby) {
  list.add(Person(name: name, age: age, hobby: hobby));
}

// Function to display the list of persons
void displayPersons(List<dynamic> list) {
  for (var person in list) {
    print("Name: ${person.name}, Age: ${person.age}, Hobby: ${person.hobby}");
  }
}

void main() {
  List<dynamic> people = [];

  // Adding objects
  addPerson(people, "Alice", 22, "Painting");
  addPerson(people, "Bob", 30, "Cycling");
  addPerson(people, "Charlie", 25, "Gaming");

  // Displaying all persons
  print("Person List:");
  displayPersons(people);
}
