final dot = '.';
final start = 'A';

class Diamond {
  List<String> rows(String end) {
    final center = end.codeUnitAt(0) - start.codeUnitAt(0);
    final graph = List<List<String>>.generate(2 * center + 1, (_) => List<String>.generate(2 * center + 1, (_) => dot));
    for (int index = 0; index <= center; index ++) {
      String pixel = new String.fromCharCode(start.codeUnitAt(0) + index);
      graph[index][center + index] = pixel;
      graph[index][center - index] = pixel;
      graph[center * 2 - index][center + index] = pixel;
      graph[center * 2 - index][center - index] = pixel;
    }
    return List.from(graph.map((strs) => strs.join()));
  }
}
