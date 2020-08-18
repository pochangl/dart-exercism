class Bob {
  String response(String str) {
    str = str.trim();
    if (str.isEmpty) return 'Fine. Be that way!';

    bool isYelling = str.toUpperCase() == str;
    bool isQuestion = str.endsWith('?');
    if (isYelling && isQuestion) return "Calm down, I know what I'm doing!";
    else if (isQuestion) return 'Sure.';
    else if (isYelling) return 'Whoa, chill out!';
    else return 'Whatever.';
  }
}
