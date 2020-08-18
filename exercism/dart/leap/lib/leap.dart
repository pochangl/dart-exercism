class Leap {
  bool leapYear(int year) {
    final date = new DateTime(year, 2, 29);
    return date.month == 2;
  }
}
