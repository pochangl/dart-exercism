class Hamming {
  int distance(String left, String right) {
    if (left.length != right.length) {
      if (left.isEmpty || right.isEmpty) throw 'no strand must be empty';
      throw 'left and right strands must be of equal length';
    }
    return List<int>.generate(left.length, (index) => index).map((index) => left[index] == right[index] ? 0 : 1).fold(0, (acc, value) => acc + value);
  }
}
