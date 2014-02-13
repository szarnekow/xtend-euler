package euler

import java.math.BigInteger

class Solution_053 {
	
	def static void main(String[] args) {
		val result = (1..100).map[n|(0..n).map[r|c(n,r)]].flatten.filter[it>1000000bi].size
		println(result)
	}
	
	def static c(int n, int r) {
		if ((r.fac * (n-r).fac) == 0) {
			println('''«r» «n» («r.fac» * «(n-r).fac»)''')
		}
		n.fac/(r.fac * (n-r).fac)
	}
	
	def static BigInteger fac(int n) {
		if (n == 0) return 1bi
		return (1..n).fold(1bi,[x,y|x*new BigInteger(y.toString)])
	}
	
	
}