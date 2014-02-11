package euler

class Solution_034 {
	
	def static void main(String[] args) {
		var maxDigits = 1
		while( (maxDigits*fac(9)).digits.size > maxDigits.intValue) {
			maxDigits = maxDigits + 1
		}
		val res = (3..Math.pow(10,maxDigits).intValue).filter[fits].fold(0,[x,y|x+y])
		println(res)
	}
	
	def static fits(int n) {
		n == n.digits.map[fac].fold(0,[x,y|x+y])
	}
	
	def static digits(int n) {
		n.toString.toCharArray.map[Integer.parseInt("" + it)]
	}
	
	def static int fac(int n) {
		if (n==0) {
			1
		} else {
			n * fac(n-1)
		}
	}
	
	
	
}