package euler

class Solution_037 {

	def static void main(String[] args) {
		var i = 11
		val result = newArrayList
		while (result.size < 11) {
			if (i.isPrime && i.isTruncablePrime) {
				println(i)
				result.add(i)
			}
			i = i + 2
		}
		println(result)
		println(result.fold(0, [x, y|x + y]))
	}

	def static isTruncablePrime(int n) {
		var k = 10
		while (k < n) {
			if ((n % k).isPrime && (n / k).isPrime) {
				k = 10 * k
			} else {
				return false
			}

		}
		true
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
