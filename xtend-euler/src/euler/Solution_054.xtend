package euler

import java.io.BufferedReader
import java.io.InputStreamReader

class Solution_054 {

	// 8C TS KC 9H 4S      7D 2S 5D 3S AC
	def static void main(String[] args) {
		val lines = newArrayList
		val reader = new BufferedReader(new InputStreamReader(typeof(Solution_054).getResourceAsStream("poker.txt")))
		try {
			var String line = null
			while ((line = reader.readLine) != null) {
				lines.add(line)
			}
		} finally {
			reader.close
		}
		val result = lines.filter [ line |
			beats(line)
		]
		println(result.size)
	}

	def static beats(String d) {
		val a = d.substring(0, 14).replaceAll(" ", ",")
		val b = d.substring(15, d.length).replaceAll(" ", ",")
		beats(a, b)

	}

	def static beats(String a, String b) {
		val ax = a.split(',').ord.intValue
		val bx = b.split(',').ord.intValue
		if (ax == bx) {
			val oa = a.split(',').map[charAt(0).toString.ord].sort.reverse
			val ob = b.split(',').map[charAt(0).toString.ord].sort.reverse
			for (i : 0 .. 4) {
				if (i > 0) {
				}
				val ai = oa.get(i)
				val bi = ob.get(i)
				if (ai > bi) {
					return true
				} else if (bi > ai) {
					return false
				}
			}
			return false
		}
		return ax > bx
	}

	val static cardord = #{
		'2' -> 1,
		'3' -> 2,
		'4' -> 3,
		'5' -> 4,
		'6' -> 5,
		'7' -> 6,
		'8' -> 7,
		'9' -> 8,
		'T' -> 9,
		'J' -> 10,
		'Q' -> 11,
		'K' -> 12,
		'A' -> 13
	}

	def static int ord(String c) {
		val r = cardord.get(c)
		r
	}

	def static int ord(String... hand) {

		// 900 Royal Flush: Ten, Jack, Queen, King, Ace, in same suit.
		if (hand.map[charAt(1)].toSet.size == 1) {
			val s = hand.map[charAt(0).toString.ord].sort.join
			if (s == '910111213') {
				return 900
			} else {

				// 800 Straight Flush: All cards are consecutive values of same suit.
				if (s == '12345') {
					return 800
				}
				if (s == '23456') {
					return 801
				}
				if (s == '34567') {
					return 802
				}
				if (s == '45678') {
					return 803
				}
				if (s == '56789') {
					return 804
				}
				if (s == '678910') {
					return 805
				}
				if (s == '7891011') {
					return 806
				}
				if (s == '89101112') {
					return 807
				}
			}
		}
		val chars0 = hand.map[charAt(0).toString.ord]
		val chars1 = hand.map[charAt(1).toString]
		val kinds = hand.map[charAt(0).toString.ord].toSet
		if (chars0.toSet.size == 2) {

			// 700 Four of a Kind: Four cards of the same value.
			if (chars0.filter[it == kinds.get(0)].size == 4) {
				return 700 + kinds.get(0)
			}
			if (chars0.filter[it == kinds.get(1)].size == 4) {
				return 700 + kinds.get(1)
			}

			// 600 Full House: Three of a kind and a pair.
			var ord3 = 0
			if (chars0.filter[it == kinds.get(0)].size == 3) {
				ord3 = 700 + kinds.get(0)
			}
			if (chars0.filter[it == kinds.get(1)].size == 3) {
				ord3 = 700 + kinds.get(0)
			}
			var ord2 = 0
			if (chars0.filter[it == kinds.get(0)].size == 2) {
				ord2 = 700 + kinds.get(1)
			}
			if (chars0.filter[it == kinds.get(1)].size == 2) {
				ord2 = 700 + kinds.get(1)
			}
			if (ord2 > 0 && ord3 > 0) {
				return 600 + ord3 //TODO higher card
			}
		}

		// 500 Flush: All cards of the same suit.
		if (chars1.toSet.size == 1) {
			return 500 + chars0.sort.reverse.head
		}

		// 400 Straight: All cards are consecutive values.
		val s = chars0.sort.join
		if (s == '12345') {
			return 400
		}
		if (s == '23456') {
			return 401
		}
		if (s == '34567') {
			return 402
		}
		if (s == '45678') {
			return 403
		}
		if (s == '56789') {
			return 404
		}
		if (s == '678910') {
			return 405
		}
		if (s == '7891011') {
			return 406
		}
		if (s == '89101112') {
			return 407
		}
		if (s == '910111213') {
			return 408
		}
		if (chars0.toSet.size == 3) {
			var max = 0
			for (c : chars0.toSet) {

				// 300 Three of a Kind: Three cards of the same value.
				if (chars0.filter[it == c].size == 3) {
					return 300 + c
				}

				// 200 Two Pairs: Two different pairs.
				if (chars0.filter[it == c].size == 2) {
					max = Math.max(max, 200 + c)
				}
			}
			return max

		}

		// 100 One Pair: Two cards of the same value.
		if (chars0.toSet.size == 4) {
			for (c : chars0.toSet) {
				if (chars0.filter[it == c].size == 2) {
					return 100 + c
				}
			}
		}
		return chars0.sort.reverse.head

	//	 0  High Card: Highest value card.
	}

}
