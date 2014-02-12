package euler

class Solution_047 {
	
	def static void main(String[] args) {
		val primes = (2..10000
		).filter[isPrime]
		var i = 210
		var count = 0
		while (i <= 1000000) {
			if (count == 4) {
				println(i-4)
				return
			}
			if (i.isDistinctFac(primes)) {
				count = count + 1
			} else {
				count = 0
			}
			i = i + 1
		}
	}
	
	def static isDistinctFac(int n, Iterable<Integer> primes) {
		var i = n
		val fac = newHashSet
		for (p : primes) {
			while (i % p == 0 && i > 1) {
				i = i/p
				fac.add(p)
			}
		}
		//println(fac + " " + i + " " + (i == 1 && fac.size == 4))
		return i == 1 && fac.size == 4
	}
	
	var static cache = <Integer, Boolean>newHashMap(1 -> false, 2 -> true)
	
	
	def static isPrime(int n) {
		if (cache.containsKey(n)) {
			return cache.get(n)
		}
		if (n % 2 == 0) {
				return false
			}
		for (i : 2 .. n - 1) {
			if (n % i == 0) {
				return false
			}
		}
		cache.put(n, true)
		true
	}
	
	
}