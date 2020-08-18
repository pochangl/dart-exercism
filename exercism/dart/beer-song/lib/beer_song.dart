Iterable<String> _recite(int beers, int times) sync* {
  while (times > 0) {
    times --;
    if (beers > 0) {
      yield '$beers bottles of beer on the wall, $beers bottles of beer.';
      beers --;
      if (beers > 1) {
        yield 'Take one down and pass it around, $beers bottles of beer on the wall.';
      } else {
        yield 'Take it down and pass it around, no more bottles of beer on the wall.';
      }
    } else {
      yield 'No more bottles of beer on the wall, no more bottles of beer.';
      beers = 99;
      yield 'Go to the store and buy some more, $beers bottles of beer on the wall.';
    }
  }
}

class BeerSong {
  List<String> recite(int beers, int times) => _recite(beers, times).toList();
}
