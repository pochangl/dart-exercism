class DifferenceOfSquares {
  List<int> getNumbers(int length) => List<int>.generate(length, (index) => index + 1);
  int sumOfSquares(int length) => this.getNumbers(length).fold(0, (acc, value) => acc + value * value);
  int squareOfSum(int length) {
    final sum = this.getNumbers(length).fold(0, (acc, value) => acc + value);
    return sum * sum;
  }
  int differenceOfSquares(int length) => this.squareOfSum(length) - sumOfSquares(length);
}
