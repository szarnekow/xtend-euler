package euler

import java.math.BigInteger

class Solution_065 {

	def static void main(String[] args) {
		val grenze = 100
		val data = (1 .. grenze).map[i|if(i == 1) 2 else if(i % 3 == 0) 2 * i / 3 else 1]

		var zaehler = 2bi
		var nenner = 1bi

		for (i : 2..grenze) {
			val stelle = BigInteger.valueOf(data.get(i - 1) as int)
			val nennerAlt = nenner
			nenner = zaehler
			zaehler = stelle * zaehler + nennerAlt
		}

		println(zaehler.toString.toCharArray.map[d|Integer.parseInt(d.toString)].fold(0, [x, y|x + y]))

	}

}
