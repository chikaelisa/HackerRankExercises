import Foundation
//https://www.hackerrank.com/challenges/diagonal-difference/problem
func diagonalDifference(arr: [[Int]]) -> Int {
	
	var rDiagonal = 0
	var lDiagonal = 0
	
	var r = 0
	var l = arr.count - 1
	
	for line in 0..<arr.count {
		precondition(arr.count == arr[line].count)
		rDiagonal += arr[line][r]
		lDiagonal += arr[line][l]
		
		r = r + 1
		l = l - 1
	}

	return abs(rDiagonal - lDiagonal)
}

diagonalDifference(arr: [[1,3,4],[2,4,7],[3,5,7]])
