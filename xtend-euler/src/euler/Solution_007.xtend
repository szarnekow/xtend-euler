package euler

import java.util.List

class Solution_007 {
	def static void main(String[] args) {
		var n = 10001
		var seenPrimes = <Integer>newArrayList
		var slice = 0
		while(true) {
			var numbers = ((slice*n + 1)..((slice + 1)*n)).toList
			for(prime: seenPrimes) {
				markAsNotPrime(prime, numbers)
			}
			slice = slice + 1
			while(!numbers.empty) {
				var nextPrime = numbers.remove(0)
				if (nextPrime != 1) {
					seenPrimes+=nextPrime
					if (seenPrimes.size == n) {
						println(nextPrime)
						return		
					}
					markAsNotPrime(nextPrime, numbers)
				}
			}
		}
	}
	
	def static void markAsNotPrime(int prime, List<Integer> numbers) {
		var iter = numbers.iterator
		while(iter.hasNext) {
			if (iter.next % prime == 0) {
				iter.remove
			}
		}
	}
}