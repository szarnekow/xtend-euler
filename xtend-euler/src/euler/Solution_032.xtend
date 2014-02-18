package euler

class Solution_032 {
	
	def static void main(String[] args) {
		val set = <Integer>newHashSet
		val x = (9..9).map[pandigitals(it, 1..9)].flatten.toSet
		for (n : x) {
			val p = pandigitalProduct(n)
			if (p>0) {
				set.add(p)
			}
		}
		println(set.fold(0,[a,b|a+b]))
	}
	
	def static int pandigitalProduct(int n){
		for (ai : 1..7) {
			for (bi : ai..8) {
				for (ci : bi..9) {
					val a = n / (Math.pow(10,9-ai) as int)
					val b = (n % (Math.pow(10,9-ai) as int)) / (Math.pow(10,9-bi) as int)
					val c = (n % (Math.pow(10,9-ai) as int)) % (Math.pow(10,9-bi) as int)
					if (a*b==c) {
						return c
					}
				}
			}
		}
		
		0
	}
	
	def static Iterable<Integer> pandigitals(int n, Iterable<Integer> alle) {
		if (n == 1) return alle
		alle.map[x| pandigitals(n-1, alle.filter[it != x]).map[y|10*y+x] ].flatten
	}
	
}