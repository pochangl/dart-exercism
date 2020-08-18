class ResistorColor {
  final List<String> colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white',
  ];
  int colorCode(String code) {
    return this.colors.indexWhere((value) => value == code);
  }
}
