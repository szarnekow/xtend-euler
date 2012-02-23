package euler

class Solution_010 {
	def static void main(String[] args) {
		var primes = <Long>newArrayList
		for(i: 2..1_999_999) {
			var primeIter = primes.iterator
			var isPrime = true
			var long knownPrime = 0
			while(isPrime && knownPrime * knownPrime < i && primeIter.hasNext) {
				knownPrime = primeIter.next
				if (i % knownPrime == 0) {
					isPrime = false
				}
			}
			if (isPrime) {
				primes += i as long
			}
		}
		println(primes.reduce [i1, i2 | i1 + i2])
	}
}