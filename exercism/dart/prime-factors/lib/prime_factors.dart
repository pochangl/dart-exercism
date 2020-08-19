List<int> primes = [2];

Iterable<int> getPrimes() sync* {
  yield * primes;
  for (int number = primes[primes.length - 1]; true; number++ ) {
    if (!primes.any((prime) => number % prime == 0)) {
      primes.add(number);
      yield number;
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
