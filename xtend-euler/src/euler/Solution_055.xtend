package euler

import java.math.BigInteger

class Solution_055 {
	
	def static void main(String[] args) {
		val r = (1..10000).map[BigInteger.valueOf(it)].filter[isLychrel]
		println(r.size)
	}
	
	def static isLychrel(BigInteger n) {
		var i = 0
		var sum = n
		while (i < 50) {
			sum = sum + sum.reverse
			if (sum.isPalindrom) {
				return false
			}
			i = i + 1
		}
		return true
	}
	
	def static isPalindrom(BigInteger n) {
		n == n.reverse
	}
	
	def static reverse(BigInteger n) {
		var nx = n
		var result = 0bi
		while(nx > 0bi) {
			result = result * 10bi + nx % 10bi
    		nx = nx / 10bi
		}
		result
	}
	
	
}