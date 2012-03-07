package euler

import java.util.List

class Solution_015 {
	
	def static void main(String[] args) {
		println(new Solution_015(20).solve)
	}
	
	List<Long> solutions
	int internalGridSize
	int numberOfNodes
	
	new(int gridSize) {
		this.internalGridSize = gridSize + 1
		this.numberOfNodes = internalGridSize * internalGridSize
		this.solutions = newArrayList()
		(0..numberOfNodes-2).forEach [ solutions.add(-1L) ]
		solutions.add(1L)
	}
	
	def solve() {
		0.solve
	}
	
	def solve(int position) {
		if (position.valid) {
			return if (position.done) solutions.get(position) else {
				var result = position.moveRight.solve
					+ position.moveDown.solve
				solutions.set(position, result)
				result
			}
			
		}
		return 0L
	}
	
	def moveDown(int atIndex) {
		atIndex + internalGridSize		
	}
	
	def moveRight(int atIndex) {
		if ((atIndex + 1) % internalGridSize == 0) return -1
		atIndex + 1
	}
	
	def isValid(int index) {
		index >= 0 && index < numberOfNodes
	}
	
	def done(int index) {
		solutions.get(index) != -1
	}
}