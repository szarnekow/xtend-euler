package euler

class Solution_039 {

	def static void main(String[] args) {
		var maxp = 0
		var maxs = 0
		for (p : 3 .. 1000) {
			var s = 0
			for (a : 1 .. p - 2) {
				for (b : 1 .. (p - a - 1)) {
					var c = p - a - b
					if (a * a + b * b == c * c) {
						s = s + 1
					}

				}
			}
			if (s > maxs) {
				maxs = s
				maxp = p
			}
		}
		println(maxp)
	}

	def static void main2(String[] args) {
		val r = (3 .. 1000).map [ p |
			p -> (1 .. p - 2).map [ a |
				(1 .. (p - a - 1)).filter [ b |
					a * a + b * b == (p - a - b) * (p - a - b)
				]
			].flatten.size
		].sortBy[x|x.value].reverse.head
		println(r)
	}

}
