package euler

class Solution_045 {
	
	def static void main(String[] args) {
		var ti = 144l
		var pi = 144l
		var hi = 144l
		var t = ti.triangle
		var p = pi.pentagonal
		var h = hi.hexagonal
		while (t != p || t != h || p != h) {
			if (t < p || t<h) {
				ti = ti + 1
				t = ti.triangle
			} else if (p < t || p < h) {
				pi = pi + 1
				p = pi.pentagonal
			
			} else if (h < t || h < p) {
				hi = hi + 1
				h = hi.hexagonal
			}
		}
		println(t)
		
	}
	
	def static triangle(long n) {
		n*(n+1)/2
	}
	def static pentagonal(long n) {
		n*(3*n-1)/2
	}
	def static hexagonal(long n) {
		n*(2*n-1)
	}
	
}