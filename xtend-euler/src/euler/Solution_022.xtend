package euler

import java.io.BufferedReader
import java.io.InputStreamReader
import java.util.concurrent.atomic.AtomicLong
import java.util.regex.Pattern

class Solution_022 {
	def static void main(String[] args) {
		val reader = new BufferedReader(new InputStreamReader(typeof(Solution_022).getResourceAsStream("names.txt")))
		try {
			val line = reader.readLine
			val matcher = Pattern::compile('"(\\w+)"').matcher(line)
			val names = <String>newArrayList 
			while(matcher.find) {
				names.add(matcher.group(1))
			}
			val result = new AtomicLong
			names.sort.forEach [ name, i |
				result.addAndGet(name.toCharArray.map [ 
					Character::getNumericValue(it) - 9
				].reduce[ i1, i2 | 
					i1 + i2
				] * (i + 1))
			]
			println(result)
		} finally {
			reader.close
		}
	}
	
}