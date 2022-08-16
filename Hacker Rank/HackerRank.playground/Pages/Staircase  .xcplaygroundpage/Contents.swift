//https://www.hackerrank.com/challenges/staircase/problem

import Foundation

func staircase(n: Int) -> Void {
	var stairs = Array(repeating: " ", count: n)
	var joined = ""
	
	if 0 < n && n <= 100 {
		for i in stride(from: n-1, to: -1, by: -1) {
			stairs[i] = "#"
			joined = stairs.joined(separator: "")
			print(joined)
		}

//		for i in (0...(n-1)).reversed() {
//			stairs[i] = "#"
//			print(stairs)
//		}
	}
	
}

staircase(n: 4)
