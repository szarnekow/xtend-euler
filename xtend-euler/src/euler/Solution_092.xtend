package euler

class Solution_092 {
	
	def static void main(String[] args) {
		var count  = 0
		for (n : 1..9999999) {
			var sum = n
			while (sum != 1 && sum != 89) {
				sum = sum.sumOfDigitsSquare
			}
			if (sum == 89) {
				count = count + 1
			}
			
		}
		println(count)
	}
	
	def static sumOfDigitsSquare(int n) {
		var sum = 0
		var k = n
		while (k > 0) {
			var digit = k % 10
			sum = sum + digit * digit
			k = k / 10
		}
		sum
	}
	
	
}