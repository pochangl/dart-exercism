class WordCount {
  Map<String, int> countWords(String str) {
    final lower = str.toLowerCase().replaceAll(new RegExp(r"[^\s\w']"), '');
    final words = lower.replaceAll(new RegExp(r"('\s)|(\s')"), ' ').split(new RegExp(r'[\s]+'));
    final Map<String, int> result = new Map();
    words.forEach((value) => result[value] = 0);
    words.forEach((value) => result[value] ++);
    return result;
  }
}
