package euler

class Solution_005 {
	def static void main(String[] args) {
		var result = <Integer>newArrayList()
		for(i: 2..20) {
			var j = i
			for(k: result) {
				if (j % k == 0) {
					j = j / k
				} 
			}
			if (j != 1)
				result += j
		}
		println(result.reduce[ m1, m2 | m1 * m2])
	}
}