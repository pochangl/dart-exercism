class Acronym {
  // Put your code here
  String abbreviate(String str) {
    return str.replaceAllMapped(new RegExp(r"(\w)([\w']*)"), (match) => match[1]).replaceAll(new RegExp(r'[^\w]'), '').toUpperCase();
  }
}
