package euler

class Solution_046 {
	
	def static void main(String[] args) {
		val primes = (2..10000).filter[isPrime]
		val oddcmp = new IntegerRange(9,10000,2).filter[!isPrime]
		for (i : oddcmp) {
			var found = false
			for (p : primes.filter[it < i]) {
				if ((i-p) % 2 == 0) {
					val x = (i-p)/2
					val sqrt = Math.sqrt(x)
					if (sqrt == sqrt as int) {
						found = true
					}
				}
			}
			if (!found) {
				println(i)
				return
			}
			
		}
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