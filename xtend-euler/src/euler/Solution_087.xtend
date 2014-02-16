package euler

import java.util.BitSet

class Solution_087 {
	
	def static void main(String[] args) {
		val limit = 50000000
		println(Math.sqrt(limit))
		val set = new BitSet(limit)
		val sieve = (Math.sqrt(limit) as int).sieve
		val primes = (2..(Math.sqrt(limit) as int)).filter[sieve.get(it)]
		
		val p2 = primes.map[1l*it*it].filter[it < limit]
		val p3 = primes.map[1l*it*it*it].filter[it < limit]
		val p4 = primes.map[1l*it*it*it*it].filter[it < limit]
		for (a : p2) {
			for (b : p3) {
				for (c : p4) {
					val long x = a + b + c
					if (x > 0 && x < limit) {
						set.set(x as int, true)
					}
					
				}
			}
		}
		println((1..50000000).filter[set.get(it)].size)
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