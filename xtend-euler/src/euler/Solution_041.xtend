package euler

class Solution_041 {
	
	def static void main(String[] args) {
		val x = (7..9).map[pandigitals(it, 1..it)].flatten
		val y = x.
		filter[isPrime()].sort.reverse.head
		println(y)
	}
	
	
	def static Iterable<Integer> pandigitals(int n, Iterable<Integer> alle) {
		if (n == 1) return alle
		alle.map[x| pandigitals(n-1, alle.filter[it != x]).map[y|10*y+x] ].flatten
	}
	
	def static isPrime(int n) {
		for (i : 2..n-1) {
			if (n%i == 0) return false
		}
		true
	}
	
}