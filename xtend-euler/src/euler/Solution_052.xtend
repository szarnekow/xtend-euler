package euler

class Solution_052 {

	def static void main(String[] args) {
		var i = 1L
		while (!i.matches) {
			i = i + 1
		}
		println(i)
	}

	def static matches(long l) {
		var a = l * 2
		var b = l * 3
		var c = l * 4
		var d = l * 5
		var e = l * 6
		if(a.ziffern < e.ziffern) return false
		val ax = a.toString.toCharArray.sort.toString
		return ax == b.toString.toCharArray.sort.toString && ax == c.toString.toCharArray.sort.toString &&
			ax == d.toString.toCharArray.sort.toString && ax == e.toString.toCharArray.sort.toString
	}

	def static ziffern(long n) {
		var k = n
		var r = 1
		while (k / 10 > 0) {
			k = k / 10
			r = r + 1
		}
		r
	}

}
