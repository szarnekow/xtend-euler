package euler

import java.util.GregorianCalendar
import static java.util.Calendar.*

class Solution_019 {
	def static void main(String[] args) {
		val calendar = GregorianCalendar::instance
		calendar.set(1901, 1, 1)
		var result = 0
		do {
			if (calendar.get(DAY_OF_WEEK) == SUNDAY)
				result = result + 1
			calendar.add(MONTH, 1)
		} while(calendar.get(YEAR) <= 2000)
		println(result)
	}
	
}