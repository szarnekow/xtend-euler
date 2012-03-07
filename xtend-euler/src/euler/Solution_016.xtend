package euler

import static extension java.lang.Character.*

class Solution_016 {
	def static void main(String[] args) {
		println(2bi.pow(1000).toString.toCharArray.map[ 
			charValue.getNumericValue
		].reduce[ i1, i2 |
			i1 + i2
		])
	}
}