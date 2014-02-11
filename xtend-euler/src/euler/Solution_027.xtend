package euler

class Solution_027 {
	
	def static void main(String[] args) {
		var max = 0;
		var key = 0;
		for (a : -1000..1000) {
			for (b : -1000..1000) {
				val n = getNumberOfPrimes(a,b)
				if (n > max) {
					max = n
					key = a*b
				}
			}
		}
		println(key)
	}
	
	def static getNumberOfPrimes(int a, int b) {
		var n = 0;
		while (isPrime(n*n+a*n+b)) {
			n = n + 1
		}
		return n
	}
	
	def static isPrime(int n) {
		for (i : 2..n-1) {
			if (n%i == 0) return false
		}
		true
	}
	
}