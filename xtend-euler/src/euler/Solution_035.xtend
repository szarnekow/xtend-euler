package euler

import java.util.regex.Pattern

class Solution_035 {
	
	def static void main(String[] args) {
		val pattern = Pattern.compile("^[13579]+$")
		val primes = new IntegerRange(1,1000000,2).filter[i|pattern.matcher(i.toString).matches].filter[isPrime]
		val circular = primes.filter[isCircular]
		println(circular.size+1)// the +1 is 2
	}
	
	def static isCircular(int n) {
		val s = n.toString
		for (i : 1..s.length-1) {
			val p = Integer.parseInt(s.substring(i, s.length)+s.substring(0, i))
			if (!p.isPrime) return false
		}
		true
	}
	
	var static cache = <Integer,Boolean>newHashMap()
	
	def static isPrime(int n) {
		if (cache.containsKey(n)) {
			return cache.get(n)
		}
		for (i : 2..n-1) {
			if (n%i == 0) {
				cache.put(n, false)
				return false
			}	
		}
		cache.put(n, true)
		true
	}
	
	
}