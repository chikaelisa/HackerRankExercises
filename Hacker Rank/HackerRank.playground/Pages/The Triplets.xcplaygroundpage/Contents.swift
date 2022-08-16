/* problem
 https://www.hackerrank.com/challenges/compare-the-triplets/problem */
import Foundation

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
	var aPontuation = 0
	var bPontuation = 0
	
	for i in 0...2 {
		if a[i] > b[i] {
			aPontuation += 1
		}
		if a[i] < b[i] {
			bPontuation += 1
		}
	}
	
	let finalPontuation = [aPontuation, bPontuation]
	
	return finalPontuation
}
 compareTriplets(a: [0,1,3], b: [20,3,5])
