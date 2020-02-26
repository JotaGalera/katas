import Foundation
func expandedForm(_ num: Int) -> String {
    var numDigits = String(num).count - 1
    var output = ""
    for digit in String(num) {
        let digitToDouble = Double(digit.description) ?? 0
        let expandedNumber = Int( digitToDouble * pow(Double(10), Double(numDigits)) )
        if expandedNumber > 0{
            output += "\(expandedNumber) + "
        }
        numDigits -= 1
    }
    output.removeLast()
    output.removeLast()
    output.removeLast()
    return output
}
//if expandedForm(420) == "400 + 20" {print ("done")}
if expandedForm(12) == "10 + 2",
    expandedForm(42) == "40 + 2",
    expandedForm(420) == "400 + 20",
    expandedForm(70304) == "70000 + 300 + 4" {
     print ("done")
}
