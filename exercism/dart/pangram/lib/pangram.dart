class Pangram {
  bool isPangram(String text) {
    text = text.toLowerCase().replaceAll(new RegExp(r'[^a-z]'), '');
    Set<String> chars = new Set.from(text.split(''));
    return chars.length == 26;
  }
}
