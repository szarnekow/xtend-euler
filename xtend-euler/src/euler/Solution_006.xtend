package euler

class Solution_006 {
	def static void main(String[] args) {
		var result = (1..100).reduce[ i1, i2 | i1 + i2 ]
		result = result * result
		result = (1..100).fold(result) [ r, i | r - i * i ]
		println(result)
	}
}