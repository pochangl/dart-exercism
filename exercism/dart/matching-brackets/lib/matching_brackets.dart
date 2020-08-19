const Map<String, String> mapping = {
  '[': ']',
  '{': '}',
  '(': ')',
};

const Set<String> closing = {']', '}', ')'};

class MatchingBrackets {
  bool isPaired(String text) {
    // bracket matching is a FIFO operation
    List<String> stack = [];

    for (String char in text.split('')) {
      if (closing.lookup(char) != null) { // closing bracket
        if (stack.length == 0 || stack.last != char) return false;
        stack.removeLast();
      } else { // opening bracket
        stack.add(mapping[char]);
      }
    }

    return stack.length == 0; // makes sure all are matched
  }
}

