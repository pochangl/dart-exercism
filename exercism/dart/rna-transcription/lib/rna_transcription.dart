Map<String, String> mapping = {
  'G': 'C',
  'C': 'G',
  'T': 'A',
  'A': 'U',
};

class RnaTranscription {
  String toRna(String dna) {
    return dna.split('').map((char) => mapping[char]).join('');
  }
}
