package euler

import java.math.BigDecimal
import com.google.common.collect.Sets

class Solution_033 {

	def static void main(String[] args) {
		var numerator = 1
		var denominator = 1
				
		val candidates = (10..98).map[a|((a+1)..99).map[b|a -> b] ].flatten.filter[
			candidate |
				val a = candidate.key
				val b = candidate.value
				val anonzerodigits = a.nonZeroDigits
				val bnonzerodigits = b.nonZeroDigits
				if (anonzerodigits.size == 2 && bnonzerodigits.size == 2) {
					val resta = Sets.difference(anonzerodigits,bnonzerodigits)
					val restb = Sets.difference(bnonzerodigits,anonzerodigits)
					if (1 == resta.size && 1 == restb.size) {
						if (a.bd / b.bd == resta.head.bd / restb.head.bd) {
							return true
						}
					}
				}
				false
		]
		
		for (c : candidates){
			numerator = numerator * c.key
			denominator = denominator * c.value
		}
		
		for (i : numerator..2) {
			if (numerator%i == 0 && denominator % i == 0) {
				numerator = numerator / i
				denominator = denominator / i
			}
		}
		println(denominator)
	}
	
	def static nonZeroDigits(int n) {
		n.toString.toCharArray.map[Integer.parseInt("" + it)].filter[it != 0].toSet
	}

	def static bd(int a) {
		new BigDecimal(a)
	}

}
