package euler

import java.math.BigInteger

class Solution_020 {
	def static void main(String[] args) {
		println((1..100).fold(1bi) [ value, i | 
			value * BigInteger::valueOf(i)
		].toString.toCharArray.fold(0) [ i, c | 
			Character::getNumericValue(c) + i
		])		
	}
	
}