import Foundation

class Solution {
  static func twosum(numbers: [Double], target: Double) -> [Int] {
    var output: [Int] = []
    for i in 0..<numbers.count{
        for j in 1..<numbers.count{
            if numbers[i] + numbers[j] == target, output.count == 0 {
                output = [i,j]
            }
        }
    }
    return output
  }
}
let actual = [0,1]
if Solution.twosum(numbers: [2,2,3], target: 4) == actual {
    print ("done")
}
