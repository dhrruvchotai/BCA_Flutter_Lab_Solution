import 'package:intl/intl.dart';

class Util {
  String formatDate(DateTime date) {
    return DateFormat('dd-MM-yyyy').format(date);
  }
}
//with inheritance
class InheritedDateFormatter extends Util {
  void showFormattedDate(DateTime date) {
    print("Formatted date (inheritance): ${formatDate(date)}");
  }
}

// without inheritance
class ComposedDateFormatter {
  Util util = Util();
  void showFormattedDate(DateTime date) {
    print("Formatted date (composition): ${util.formatDate(date)}");
  }
}

void main() {
  DateTime now = DateTime.now();

  InheritedDateFormatter inheritedFormatter = InheritedDateFormatter();
  inheritedFormatter.showFormattedDate(now);

  ComposedDateFormatter composedFormatter = ComposedDateFormatter();
  composedFormatter.showFormattedDate(now);
}
