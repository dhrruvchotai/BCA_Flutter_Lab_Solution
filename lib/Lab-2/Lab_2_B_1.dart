// Note: 1 pound=.45359237 Kg and 1 inch=0.254 meters.
import 'dart:io';

void main() {

  stdout.write("Enter your weight in pounds: ");
  double weight = double.parse(stdin.readLineSync()!) * 0.45359237;

  stdout.write("Enter your height in inches: ");
  double height = double.parse(stdin.readLineSync()!) * 0.0254;

  double bmi = weight / (height * height);
  print("Your Body Mass Index (BMI) is: ${bmi}");

}
