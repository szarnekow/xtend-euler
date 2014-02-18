package euler

import com.google.common.collect.Sets
import java.util.List

class Solution_061 {

	def static void main(String[] args) {
		val triangles = candidates(triangle).toList
		val squares = candidates(square).toList
		val pentagonals = candidates(pentagonal).toList
		val hexagonals = candidates(hexagonal).toList
		val heptagonals = candidates(heptagonal).toList
		val octagonals = candidates(octagonal).toList

		val alle = newArrayList(squares, triangles, pentagonals, hexagonals, heptagonals, octagonals).flatten.toSet
		var result = Sets.cartesianProduct(alle, alle).filter[l|l.get(0) % 100 == l.get(1) / 100]
		result = result.map[l|
			alle.filter[a|l.get(1) % 100 == a / 100].map[val r = newArrayList() r.addAll(l) r.add(it) r]].flatten
		result = result.map[l|
			alle.filter[a|l.get(2) % 100 == a / 100].map[val r = newArrayList() r.addAll(l) r.add(it) r]].flatten
		result = result.map[l|
			alle.filter[a|l.get(3) % 100 == a / 100].map[val r = newArrayList() r.addAll(l) r.add(it) r]].flatten
		result = result.map[l|
			alle.filter[a|l.get(4) % 100 == a / 100 && a % 100 == l.get(0) / 100].map[val r = newArrayList() r.addAll(l)
				r.add(it) r]].flatten
		result = result.toSet.filter [ l |
			testTriangles(l, triangles, squares, pentagonals, hexagonals, heptagonals, octagonals)
		]
		result = result.map[sort].toSet
		for (l : result) {
			println(l.fold(0,[x,y|x+y]))
		}
	}

	def static boolean testTriangles(
		List<Integer> l,
		List<Integer> triangles,
		List<Integer> squares,
		List<Integer> pentagonals,
		List<Integer> hexagonals,
		List<Integer> heptagonals,
		List<Integer> octagonals
	) {
		for (lx : l.filter[triangles.contains(it)]) {
			if (testSquares(l.filter[it != lx].toList, triangles, squares, pentagonals, hexagonals, heptagonals,
				octagonals)) {
				return true
			}
		}
		return false

	}

	def static boolean testSquares(
		List<Integer> l,
		List<Integer> triangles,
		List<Integer> squares,
		List<Integer> pentagonals,
		List<Integer> hexagonals,
		List<Integer> heptagonals,
		List<Integer> octagonals
	) {
		for (lx : l.filter[squares.contains(it)]) {
			if (testPentagonals(l.filter[it != lx].toList, triangles, squares, pentagonals, hexagonals, heptagonals,
				octagonals)) {
				return true
			}
		}
		return false

	}

	def static boolean testPentagonals(
		List<Integer> l,
		List<Integer> triangles,
		List<Integer> squares,
		List<Integer> pentagonals,
		List<Integer> hexagonals,
		List<Integer> heptagonals,
		List<Integer> octagonals
	) {
		for (lx : l.filter[pentagonals.contains(it)]) {
			if (testHexagonals(l.filter[it != lx].toList, triangles, squares, pentagonals, hexagonals, heptagonals,
				octagonals)) {
				return true
			}
		}
		return false

	}

	def static boolean testHexagonals(
		List<Integer> l,
		List<Integer> triangles,
		List<Integer> squares,
		List<Integer> pentagonals,
		List<Integer> hexagonals,
		List<Integer> heptagonals,
		List<Integer> octagonals
	) {
		for (lx : l.filter[hexagonals.contains(it)]) {
			if (testHeptagonals(l.filter[it != lx].toList, triangles, squares, pentagonals, hexagonals, heptagonals,
				octagonals)) {
				return true
			}
		}
		return false

	}

	def static boolean testHeptagonals(
		List<Integer> l,
		List<Integer> triangles,
		List<Integer> squares,
		List<Integer> pentagonals,
		List<Integer> hexagonals,
		List<Integer> heptagonals,
		List<Integer> octagonals
	) {
		for (lx : l.filter[heptagonals.contains(it)]) {
			if (testOctagonals(l.filter[it != lx].toList, triangles, squares, pentagonals, hexagonals, heptagonals,
				octagonals)) {
				return true
			}
		}
		return false

	}

	def static boolean testOctagonals(
		List<Integer> l,
		List<Integer> triangles,
		List<Integer> squares,
		List<Integer> pentagonals,
		List<Integer> hexagonals,
		List<Integer> heptagonals,
		List<Integer> octagonals
	) {
		return l.size == 1 && octagonals.contains(l.get(0))

	}

	def static candidates((int)=>int f) {
		var result = newArrayList
		var n = 1
		var value = Integer.MAX_VALUE
		do {
			value = f.apply(n)
			result.add(value)
			n = n + 1
		} while (value < 10000)
		result.filter[it >= 1000]
	}

	var static (int)=>int triangle = [ n |
		n * (n + 1) / 2
	]

	var static (int)=>int square = [ n |
		n * n
	]

	var static (int)=>int pentagonal = [ n |
		n * (3 * n - 1) / 2
	]

	var static (int)=>int hexagonal = [ n |
		n * (2 * n - 1)
	]

	var static (int)=>int heptagonal = [ n |
		n * (5 * n - 3) / 2
	]

	var static (int)=>int octagonal = [ n |
		n * (3 * n - 2)
	]

}
