package euler

import java.math.BigInteger

class Solution_056 {
	
	def static void main(String[] args) {
		var max = 0bi
		var a = 1
		while (a < 100) {
			var b = 1
			val abi = BigInteger.valueOf(a)
			while (b < 100) {
				val apowb = abi.pow(b)
				val s = apowb.sum
				if (s > max) {
					max = s
				}
				b = b + 1
			}
			a = a + 1
		}
		println(max)
	}
	
	def static BigInteger sum(BigInteger n) {
		if (n/10bi == 0bi) {
			n
		} else {
			n%10bi + (n/10bi).sum
		}
	}
	
	
}