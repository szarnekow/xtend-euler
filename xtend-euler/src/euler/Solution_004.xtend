package euler

import java.util.List

class Solution_004 {
	def static void main(String[] args) {
		var allPalindromes = <Integer>newArrayList
		for(left: 100..999) {
			for(right: 100..999) {
				var List<Character> product = (left * right).toString.toCharArray
				if (product.reverseView == product)
					allPalindromes += left * right
			}
		}
		println(allPalindromes.reduce[ i1, i2 | Math::max(i1, i2)])
	}
}