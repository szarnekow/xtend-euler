package euler

class Solution_040 {
	
	def static void main(String[] args) {
		
		val b = new StringBuilder
		b.append("0")
		var c = 1
		while(b.length < 10000000) {
			b.append(c.toString)
			c = c+1
		}
		val sum = 
		newArrayList(b.charAt(1),b.charAt(10),b.charAt(100),b.charAt(1000),b.charAt(10000),b.charAt(100000),b.charAt(1000000))
		println(sum.map[Integer.parseInt(it+"")].fold(1,[x,y|x*y]))
	}
	
}