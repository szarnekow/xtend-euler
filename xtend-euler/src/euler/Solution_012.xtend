package euler

class Solution_012 {
	def static void main(String[] args) {
		var long triangle = 0
		var long i = 1
		while(true) {
			triangle = triangle + i
			i = i + 1
			if (numberOfDivisors(triangle) > 500) {
				println(triangle)
				return
			}
		}
	}
	
	def static numberOfDivisors(long triangle) {
		var max = Math::sqrt(triangle).longValue
		var long result = 0
		var long i = 1
		while(i < max) {
			if (triangle % i == 0) {
				result = result + 2
			}
			i = i + 1
		}
		return result
	}
}