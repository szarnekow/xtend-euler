package euler

import com.google.common.collect.AbstractIterator

class Solution_002 extends AbstractIterator<Long> {
	
	def static void main(String[] args) {
		println(new Solution_002().reduce[l1, l2 | l1 + l2])
	}

	long l0 = 0
	long l1 = 1
	
	override protected Long computeNext() {
		if (l1 > 4000000)
			endOfData
		var result = l0 + l1
		l0 = l1
		l1 = result
		if (result % 2 == 0)
			result
		else
			computeNext
	}
	
}