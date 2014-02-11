package euler

import java.math.BigInteger

class Solution_028 {
	
	def static void main(String[] args) {
		val g = 1001/2
		val sx = (2..(g+1)).map[a|a.getTheX]
		val BigInteger r = sx.fold(0bi,[x,y|x+new BigInteger(y+"")])
		println(1bi+ r)
	}
	
	def static getTheX(int n) {
		var a = 2*n-1
		var b = 2*n-2
		val s = 4*a*a-6*b
		s
	}
	
}