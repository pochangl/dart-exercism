class Isogram {
  bool isIsogram(String str) {
    final chars = str.replaceAll(' ', '').replaceAll('-', '').split('');
    return (new Set.from(chars)).length == chars.length;
  }
}
