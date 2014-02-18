package euler

class Solution_029 {
	
	def static void main(String[] args) {
		val r = (2..100).map[int x|(2..100).map[int y|Math.pow(x,y)
		] ].flatten.toSet
		println(r.size)
	}
	
}