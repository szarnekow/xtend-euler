package euler

class Solution_001 {
	def static void main(String[] args) {
		println((1..999).filter[ i | i % 3 == 0 || i % 5 == 0].reduce[i1, i2 | i1 + i2])
	}
}