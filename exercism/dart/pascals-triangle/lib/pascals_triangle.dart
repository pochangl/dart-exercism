class PascalsTriangle {
  List<List<int>> rows(int number) {
    List<int> lastRow = [];
    List<List<int>> result = [];

    for (int level = 0; level < number; level++) {
      List<int> row = List<int>.from(lastRow);
      row.add(1);
      for (int pos = 0; pos < lastRow.length - 1; pos ++) {
          row[pos + 1] += lastRow[pos];
      }
      result.add(row);
      lastRow = row;
    }
    return result;
  }
}
