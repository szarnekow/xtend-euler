package euler

class Solution_036 {
	
	def static void main(String[] args) {
		val r = (1..999999).filter[n|n.toString.isDoubleBasePalindrom[|Integer.toBinaryString(n)]].fold(0,[x,y|x+y])
		println(r)
	}
	
	def static isDoubleBasePalindrom(String n, () => String b) {
		if (n.reverse != n) {
			return false
		}
		val s = b.apply
		s == s.reverse
	}
		
	def static reverse(String s) {
		new StringBuilder(s).reverse.toString
	}
	
	
}