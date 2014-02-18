package euler

import java.math.BigInteger

class Solution_030 {
	
	def static void main(String[] args) {
		val data = (10..10000000).filter[isit(new BigInteger(it+""))]
		println(data.fold(0,[x,y|x+y]))
	}

	def static isit(BigInteger n) {
		n == n.toString.toCharArray.map[new BigInteger(it+"").pow(5)].fold(0bi,[x,y|x+y])
	}
	
}