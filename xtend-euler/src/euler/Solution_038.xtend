package euler

class Solution_038 {

	def static void main(String[] args) {
		val ps = 9.pandigitals(newArrayList(1, 2, 3, 4, 5, 6, 7, 8, 9)).map[toString]
		val filtered = ps.filter[p|p.ccproduct]
		println(filtered.sort.reverse.head)
	}

	def static ccproduct(String p) {

		var n = 2
		while (n <= 9) {
			var parts = 9 / n
			if (parts > 1) {
				val s = Integer.valueOf(p.substring(0, n))
				val ss = (1 .. parts).map[i|s * i].join
				if (p == ss) {
					return true
				}
			}

			n = n + 1
		}

		return false
	}

	def static Iterable<Integer> pandigitals(int n, Iterable<Integer> alle) {
		if(n == 1) return alle
		alle.map[x|pandigitals(n - 1, alle.filter[it != x]).map[y|10 * y + x]].flatten
	}

}
