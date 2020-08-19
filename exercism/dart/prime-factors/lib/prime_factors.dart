List<int> primes = [];
int current = 2;

Map<int, List<int>> progress = {};

void moveon () {
  for (int prime in progress[current]) {
    progress[current + prime] = progress.containsKey(current + prime) ? progress[current + prime] : new List<int>();
    progress[current + prime].add(prime);
  }
}

Iterable<int> getPrimes() sync* {
  yield * primes;
  while (true) {
    if (progress.containsKey(current)) {
      moveon();
      current ++;
    } else {
      primes.add(current);
      progress[current] = [current];
      moveon();
      current ++;
      yield current - 1;
    }
  }
}

class PrimeFactors {
  List<int> factors(int number) {
    List<int> facts = [];
    for (int prime in getPrimes()) {
       while (number % prime == 0) {
         facts.add(prime);
         number ~/= prime;
       }
       if (number <= 1) {
         break;
       } else if (number < prime * prime) {
         facts.add(number);
         break;
       }
    }
    return facts;
  }
}
