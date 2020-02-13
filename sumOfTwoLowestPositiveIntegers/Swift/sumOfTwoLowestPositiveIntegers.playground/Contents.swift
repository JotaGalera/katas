import UIKit

func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
  let arraySorted = array.sorted() as [Int]
  return arraySorted[0] + arraySorted[1]
}

var passTest = false
if sumOfTwoSmallestIntegersIn([5, 8, 12, 18, 22]) ==  13,
    sumOfTwoSmallestIntegersIn([7, 15, 12, 18, 22]) == 19,
    sumOfTwoSmallestIntegersIn([25, 42, 12, 18, 22]) == 30,
    sumOfTwoSmallestIntegersIn([1, 8, 12, 18, 5]) == 6,
    sumOfTwoSmallestIntegersIn([13, 12, 5, 61, 22]) == 17 {
        passTest = true
    }
passTest
