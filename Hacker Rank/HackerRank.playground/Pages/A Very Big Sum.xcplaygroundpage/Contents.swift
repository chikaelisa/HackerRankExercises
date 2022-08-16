//https://www.hackerrank.com/challenges/a-very-big-sum/problem

import Foundation

func aVeryBigSum(ar: [Int]) -> Int {
	return ar.reduce(0, +)

}

aVeryBigSum(ar: [5, 9, 2345, 10101010])
