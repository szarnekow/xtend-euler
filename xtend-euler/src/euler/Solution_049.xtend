package euler

import java.util.List

class Solution_049 {
	
	def static void main(String[] args) {
		val primes = new IntegerRange(1001,9999,2).filter[
			isPrime
		].toList.sort
		var List<List<Integer>> result = newArrayList
		for (ia : 1..primes.length-2) {
			for (ib : (ia+1)..primes.length-1) {
				for (ic : (ib+1)..primes.length) {
					var a = primes.get(ia-1)
					var b = primes.get(ib-1)
					var c = primes.get(ic-1)
					if ( b-a == c-b) {
						if (perm(a.toString,b.toString,c.toString)) {
							result.add(#[a,b,c])
						}
					}
				}
			}
		}
		result = result.filter[l|l.get(0) != 1487].toList
		println(result.head.join)
	}
	
	def static  perm(String a, String b, String c) {
		val sa = a.toCharArray.sort.toString
		val sb = b.toCharArray.sort.toString
		val sc = c.toCharArray.sort.toString
		return sa == sb && sa == sc
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