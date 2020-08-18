import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    final digits = number.toString().split('');
    final length = digits.length;
    final sum = digits.map((digit) => pow(int.parse(digit), length)).fold(0, (acc, value) => acc + value);
    return sum == number;
  }
}
