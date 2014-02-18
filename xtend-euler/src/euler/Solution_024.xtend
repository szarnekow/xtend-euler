package euler

class Solution_024 {
	
	def static void main(String[] args) {
		val result = newArrayList()
		var n = 1000000
		val digits = newArrayList(0,1,2,3,4,5,6,7,8,9)
		for (i : 9..0) {
			val nfac = fac(i)
			var k = 0
			while (n > nfac && k < nfac) {
				k = k+1
				n = n-nfac
			}
			val d = digits.get(k)
			digits.remove(k)
			result.add(d) 
		}
		println(result.join)
	}
	
	def static int fac(int n) {
		if (n==0) {
			1
		} else {
			n * fac(n-1)
		}
	}
	
	
}