package euler

import java.math.BigInteger

class Solution_048 {
	
	def static void main(String[] args) {
		
		val x =
		new StringBuffer((1..1000).map[
			new BigInteger(it+"").pow(it)
		]
		.fold(0bi,[x,y|x+y]).toString).reverse.substring(0,10)
		println(new StringBuffer(x).reverse)
	}
	
}