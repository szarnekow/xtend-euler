package euler

class Solution_017 {
	
	def static void main(String[] args) {
		println(new Solution_017(1000).solve)
	}
	
	int upper
	
	new(int upper) {
		this.upper = upper
	}
	
	def solve() {
		(1..upper).map[ word.replace(" ","").length ].reduce[ i1, i2 |
			i1 + i2
		]
	}
	
	def String word(int number) {
		if (number >= 1000) {
			(number / 1000).word + " thousand " + (number % 1000).word			 
		} else if (number >= 100) {
			var remainder = number % 100
			(number / 100).word + " hundred" + (if (remainder != 0) " and " + remainder.word else "")
		} else {
			number.wordToHundred
		}
	}
	
	def String wordToHundred(int number) {
		switch(number) {
			case 0: ""
			case 1: "one"
			case 2: "two"
			case 3: "three"
			case 4: "four"
			case 5: "five"
			case 6: "six"
			case 7: "seven"
			case 8: "eight"
			case 9: "nine"
			case 10: "ten"
			case 11: "eleven"
			case 12: "twelve"
			case 13: "thirteen"
			case 14: "fourteen"
			case 15: "fifteen"
			case 16: "sixteen"
			case 17: "seventeen"
			case 18: "eighteen"
			case 19: "nineteen"
			case number < 30: "twenty " + (number % 10).wordToHundred
			case number < 40: "thirty " + (number % 10).wordToHundred
			case number < 50: "forty " + (number % 10).wordToHundred
			case number < 60: "fifty " + (number % 10).wordToHundred
			case number < 70: "sixty " + (number % 10).wordToHundred
			case number < 80: "seventy " + (number % 10).wordToHundred
			case number < 90: "eighty " + (number % 10).wordToHundred
			case number < 100: "ninety " + (number % 10).wordToHundred
		}
	}
}