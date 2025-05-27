import 'package:intl/intl.dart';

void main() {
  DateTime now = DateTime.now();
  String format1 = DateFormat('dd/MM/yyyy').format(now);
  String format2 = DateFormat('dd-MM-yyyy').format(now);
  String format3 = DateFormat('dd-MMM-yyyy').format(now);
  String format4 = DateFormat('dd-MM-yy').format(now);
  String format5 = DateFormat('dd MMM, yyyy').format(now);

  print("Current Date Formats:");
  print("dd/MM/yyyy : $format1");
  print("dd-MM-yyyy : $format2");
  print("dd-MMM-yyyy : $format3");
  print("dd-MM-yy : $format4");
  print("dd MMM, yyyy : $format5");
}
