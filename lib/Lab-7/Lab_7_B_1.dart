class Time {
  int hour, minute;

  Time(this.hour, this.minute);

  Time add(Time other) {
    int min = this.minute + other.minute;
    int hr = this.hour + other.hour + (min ~/ 60);
    return Time(hr % 24, min % 60);
  }

  void show() {
    print("${this.hour}:${this.minute}");
  }
}

void main() {
  Time t1 = Time(10, 45);
  Time t2 = Time(3, 30);
  Time t3 = t1.add(t2);

  t1.show();
  t2.show();
  t3.show();
}
