package euler

import java.math.BigInteger

class Solution_058 {
	
	def static void main(String[] args) {
		var n = 2
		var found = false
		var sum = 0
		
		var numberOfPrimes = 0
		var numberOfElements = 1.0
		
		while (!found) {
			val a = sum+2*n-1
			if (a<0) throw new IllegalStateException
			val b = 2*n-2
			val newOnes = newArrayList(a, a + b, a + 2 * b, a + 3 * b)
			sum = sum + 4 * b
			numberOfPrimes = numberOfPrimes + newOnes.filter[isPrime].size
			numberOfElements = numberOfElements + 4 
			if (numberOfPrimes/numberOfElements < 0.1) {
				found = true
			}
			n = n + 1
		}
		println(2*(n-1)-1)
	}
	
	def static isPrime(int n) {
		BigInteger.valueOf(n).isProbablePrime(15)
	}
			
}