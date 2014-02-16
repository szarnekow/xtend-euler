package euler

import java.math.BigInteger

class Solution_063 {
	
	def static void main(String[] args) {
		val result = newHashSet
		for (n : 1..30) {
			val d = BigInteger.valueOf(n)
			var i = 1
			while (digits(BigInteger.valueOf(i).pow(n))<=d) {
				if (digits(BigInteger.valueOf(i).pow(n))== d) {
					result.add(BigInteger.valueOf(i).pow(n))
				}
				i = i+1
			}
		}
		println(result.size)
	}
	
	def static BigInteger digits(BigInteger n) {
		if (n==0bi) return 0bi
		return 1bi+digits(n/10bi)
	}
	
	
}