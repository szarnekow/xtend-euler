package euler

import static extension java.lang.Math.*
import java.util.Set

class Solution_023 {
	def static void main(String[] args) {
		val allAbundantNumbers = (28123..1).filter[isAbundant(it)].toSet
		println((28123..1).filter[ !isSumOfAbundantNumbers(it, allAbundantNumbers) ].reduce[ i1, i2 | i1 + i2])
	}
	
	def static isSumOfAbundantNumbers(int input, Set<Integer> allAmbundantNumbers) {
		for(i : allAmbundantNumbers) {
			if (allAmbundantNumbers.contains(input - i))
				return true
		}
		return false
	}
	
	def static isAbundant(int input) {
		val sqrt = Math::sqrt(input).floor.intValue;
		val sumOfDivisors = (2..sqrt).filter [ int div | 
			div != input && input % div == 0
		].fold(1) [ i1, i2 | 
			val other = input / i2 
			if (other != i2 && other != input) 
				i1 + i2 + other 
			else 
				i1 + i2
		]
		return sumOfDivisors > input
	}
	
}