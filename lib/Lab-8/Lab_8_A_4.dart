import 'dart:io';

List<int> findCommonElements(List<int> list1, List<int> list2) {
  return list1.toSet().intersection(list2.toSet()).toList();
}

void main() {
  List<int> list1 = [];
  List<int> list2 = [];
  print("Enter number of elements for List 1:");
  int n1 = int.parse(stdin.readLineSync()!);

  print("Enter elements for List 1:");
  for (int i = 0; i < n1; i++) {
    stdout.write("Element ${i + 1}: ");
    list1.add(int.parse(stdin.readLineSync()!));
  }

  print("\nEnter number of elements for List 2:");
  int n2 = int.parse(stdin.readLineSync()!);
  print("Enter elements for List 2:");
  for (int i = 0; i < n2; i++) {
    stdout.write("Element ${i + 1}: ");
    list2.add(int.parse(stdin.readLineSync()!));
  }

  List<int> common = findCommonElements(list1, list2);
  print("\nCommon elements:");
  if (common.isEmpty) {
    print("No common elements found.");
  } else {
    print(common);
  }
}
