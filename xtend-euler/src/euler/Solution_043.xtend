package euler

import java.util.List

class Solution_043 {
	
	
	
	def static void main(String[] args) {
		val result = newArrayList
		0.construct(newArrayList(1, 2, 3, 4, 5, 6, 7, 8, 9, 0),result)
		println(result.fold(0l,[x,y|x+y]))
	}
	
	
	def static void construct(long n, Iterable<Integer> digits, List<Long> results) {
		if (digits.size==6 && (n%1000)%2 != 0) {
			return
		}
		if (digits.size==5 && (n%1000)%3 != 0) {
			return
		}
		if (digits.size==4 && (n%1000)%5 != 0) {
			return
		}
		if (digits.size==3 && (n%1000)%7 != 0) {
			return
		}
		if (digits.size==2 && (n%1000)%11 != 0) {
			return
		}
		if (digits.size==1 && (n%1000)%13 != 0) {
			return
		}
		if (digits.size==0 && (n%1000)%17 == 0) {
			results.add(n)
		}
		for (i : digits) {
			construct(10*n+i,digits.filter[it != i], results)
		}
	}
	
}