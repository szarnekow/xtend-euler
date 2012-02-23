package euler

import com.google.common.collect.AbstractIterator

class Solution_003 extends AbstractIterator<Long> {
	
	def static void main(String[] args) {
		println(new Solution_003().last)
	}
	
	long compound = Long::valueOf("600851475143")
	long sqrt = Math::sqrt(compound).longValue
	long current = 2
	 
	override protected Long computeNext() {
		while(current < sqrt) {
			if (compound % current == 0 && current.isPrime) {
				var result = current
				current = current + 1
				return result
			}
			current = current + 1
		}
		endOfData
	}
	
	def isPrime(long l) {
		(2..Math::sqrt(l).intValue).filter[ int i | l % i == 0 ].empty
	}
}