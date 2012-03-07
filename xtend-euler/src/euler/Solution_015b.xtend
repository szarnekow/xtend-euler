package euler

class Solution_015b {
	def static void main(String[] args) {
		val gridSize = 20
		val it = <Long>newArrayList()
		(1..gridSize+1).forEach[ col | add(1L) ]
		(1..gridSize).forEach[ row |
			(1..gridSize).forEach[ col |
				set(col, get(col - 1) + get(col))
			]
		]
		println(last)
	}
}