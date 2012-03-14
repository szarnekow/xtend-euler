package euler

import static extension java.lang.Math.*

class Solution_021 {
	def static void main(String[] args) {
		var result = <Integer>newHashSet
		val max = 10000
		for(i: 1..max) {
			if (!result.contains(i)) {
				val sumOfDivisors = sumOfDivisors(i)
				if (sumOfDivisors != i && sumOfDivisors <= max) {
					val otherSumOfDivisors = sumOfDivisors(sumOfDivisors)
					if (otherSumOfDivisors == i) {
						result.add(i)
						result.add(sumOfDivisors)
					}
				} 
			}
		}
		println(result.reduce[i1, i2| i1 + i2])
	}
	
	def static sumOfDivisors(int input) {
		val sqrt = Math::sqrt(input).floor.intValue;
		(2..sqrt).filter [ int div | 
			input % div == 0
		].fold(1) [ i1, i2 | 
			val other = input / i2 
			if (other != i2) 
				i1 + i2 + other 
			else 
				i1 + i2
		]
	}
	
}