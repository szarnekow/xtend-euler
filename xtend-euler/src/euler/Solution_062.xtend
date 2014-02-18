package euler

import java.util.Arrays
import java.util.HashMap
import java.util.List
import java.math.BigInteger

class Solution_062 {
	
	def static void main(String[] args) {
		val data = new HashMap<String, List<Integer>>()
		var i = 1
		var n = 1000000
		while (i < n) {
			var bi = BigInteger.valueOf(i)
			val a = (bi*bi*bi).toString.toCharArray
			Arrays.sort(a)
			val String c = String.valueOf(a)
			if (data.containsKey(c)) {
				val l = data.get(c)
				if (l.size == 4) {
					l.add(i.intValue)
					println(l.sort.head.cube)
					return
				}
				
			} else {
				data.put(c, newArrayList)
			}
			data.get(c).add(i.intValue)
			i = i + 1
		}
	}
	
	def static cube(long l) {
		l*l*l
	}
	
}