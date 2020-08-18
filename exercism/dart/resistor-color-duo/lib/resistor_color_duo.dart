class ResistorColorDuo {
  final colors = {
    'black': 0,
    'brown': 1,
    'red': 2,
    'orange': 3,
    'yellow': 4,
    'green': 5,
    'blue': 6,
    'violet': 7,
    'grey': 8,
    'white': 9,
  };
  int value(List<String> codes) {
    return this.colors[codes[0]] * 10 + this.colors[codes[1]];
  }
}
