package euler

import com.google.common.collect.AbstractIterator

import java.util.BitSet

class Solution_014 extends AbstractIterator<Long> {
	
	def static void main(String[] args) {
		val numbersSeen = new BitSet(1_000_000)
		println((1_000_000..1).map[ 
			it -> new Solution_014(it, numbersSeen).size
		].reduce[ r1, r2 | if (r1.value > r2.value) r1 else r2 ].key)
	}

	Long current
	BitSet numbersSeen

	new(long start, BitSet numbersSeen) {
		current = start
		if (numbersSeen.get(current.intValue)) {
			current = 1L
		}
		this.numbersSeen = numbersSeen
	}
	
	override protected Long computeNext() {
		val result = current
		current = switch(current) {
			case 0L: return endOfData
			case 1L: 0L
			case current % 2 == 0: current / 2
			default : 3 * current + 1
		}
		if (result < 1_000_000)
			numbersSeen.set(result.intValue)
		return result
	}
	
}