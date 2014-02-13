package euler

import java.util.Arrays

class Solution_044 {

	def static void main(String[] args) {
		val n = 10000
		val pentagonals = newLongArrayOfSize(n)
		for (i : 1..n) {
			pentagonals.set(i-1, i.pentagonal)
		}
		var d = Long.MAX_VALUE
		for (i : 0..n-2) {
			for (j : i+1..n-1) {
				val diff = pentagonals.get(j)-pentagonals.get(i)
				if (Math.abs(diff) < d) {
					val sum = pentagonals.get(i)+pentagonals.get(j)
					if (Arrays.binarySearch(pentagonals, sum)>=0 && Arrays.binarySearch(pentagonals, diff)>=0) {
						d = Math.abs(diff)
					}
				}
				
			}
		}	
		println(d)
	}
	
	def static pentagonal(int n) {
		n*(3*n-1)/2
	}
	
	
}