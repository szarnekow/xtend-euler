package euler

import java.util.List

class Solution_050 {

	def static void main(String[] args) {
		println(100.consecutivePrimeSum)
		println(1000.consecutivePrimeSum)
		println(1000000.consecutivePrimeSum)

	}
	
	def static getConsecutivePrimeSum(int n) {
		val sieve = n.sieve
		val primes = (1 .. n).filter[sieve.get(it)].toList
		val sums = primes.primeSums
		var i = 0
		var result = 0
		var length = 0

		while (i < sums.length) {
			var j = i - (length+1)
			while (j >= 0) {
				val diff = sums.get(i) - if (j==0) 0 else sums.get(j-1)

				if (diff > n) {
					j = -1
				} else {
					if (sieve.get(diff)) {
						if (i - j > length) {
							length = i - j
							result = diff
						}
					}
					j = j - 1

				}
			}
			i = i + 1
		}
		result
	}


	def static getPrimeSums(List<Integer> primes) {
		val sums = newIntArrayOfSize(primes.size)
		var i = 0
		var sum = 0
		while (i < primes.size) {
			sum = sum + primes.get(i)
			sums.set(i, sum)
			i = i + 1
		}
		sums
	}

	def static getSieve(int n) {
		val sieve = newBooleanArrayOfSize(n + 1)
		var i = 2
		while (i < sieve.length) {
			sieve.set(i, true)
			i = i + 1
		}
		i = 2
		while (i < sieve.length) {
			if (sieve.get(i)) {
				var j = 2
				while (i * j < sieve.length) {
					sieve.set(i * j, false)
					j = j + 1
				}
			}
			i = i + 1
		}
		sieve
	}

}
