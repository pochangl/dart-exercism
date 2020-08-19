class Anagram {
  List<String> findAnagrams(String target, List<String> words) {
    List<String> anagrams = [];
    List<String> chars = target.split('');
    chars.sort();
    String characteristic = chars.join();
    String lower = target.toLowerCase();

    for (String word in words) {
      List<String> chars = word.split('');
      chars.sort();
      if (characteristic == chars.join() && lower != word.toLowerCase()) {
        anagrams.add(word);
      }
    }
    return anagrams;
  }
}
