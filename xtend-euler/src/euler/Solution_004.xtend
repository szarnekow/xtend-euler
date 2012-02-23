package euler

import java.util.List

class Solution_004 {
	def static void main(String[] args) {
		var result = 0
		for(left: 100..999) {
			for(right: left..999) {
				var candidate = left * right
				if (candidate > result) {
					var List<Character> charList = candidate.toString.toCharArray
					if (charList.reverseView == charList)
						result = candidate
				}
			}
		}
		println(result)
	}
}