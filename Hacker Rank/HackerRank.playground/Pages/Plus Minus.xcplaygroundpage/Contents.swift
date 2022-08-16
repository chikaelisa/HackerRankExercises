/* https://www.hackerrank.com/challenges/plus-minus/problem */
import Foundation
import Darwin

func plusMinus(arr: [Int]) -> Void {
	var positive = 0.0
	var negative = 0.0
	var zero = 0.0
	let count = Double(arr.count)
	
	if count != 0 {
		for element in arr {
			if element == 0 {
				zero = zero + 1.0
			}
			if element < 0 {
				negative += 1.0
			}
			if element > 0 {
				positive += 1.0
			}
		}
		
		positive = positive/count
		negative = negative/count
		zero = zero/count
		
		
		
		let output = """
   \(round(number: positive))
   \(round(number: negative))
   \(round(number: zero))
  
"""
		print(output)
 }
 
}

func round(number: Double, by: Double = 6) -> Double {
	Double(round(pow(10,by) * number))/pow(10,by)
}
plusMinus(arr: [-20, -30, 0, 0, 25, 35, 45])
