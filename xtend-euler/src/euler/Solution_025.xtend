package euler

import java.math.BigInteger
import com.google.common.collect.AbstractIterator

class Solution_025 extends AbstractIterator<Integer> {
	
	def static void main(String[] args) {
		println(new Solution_025().last)
	}

	BigInteger max = 10bi.pow(999)
	BigInteger f1 = 1bi
	BigInteger f2 = 1bi
	int idx = 2

	override Integer computeNext() {
		if (f2 >= max)
			return endOfData
		val next = f1 + f2
		f1 = f2
		f2 = next
		idx = idx + 1
		return idx
	}
	
}