package euler

class Solution_009 {
	def static void main(String[] args) {
		(1..1000).forEach[ a|
			((a+1)..(1000-a)).forEach[ b|
				var c = 1000 - a - b
				if (c >= 0) {
					if (a*a + b*b == c*c) {
						println('''
							a = «a»
							b = «b»
							c = «c»
							product = «a*b*c»
						''')
					}
				}
			]
		]
	}
}