import Foundation
func whatCentury(_ year: String) -> String {
    let yearArray = Array(year)
    guard var century = year.count > 3 ? Int("\(yearArray[0])\(yearArray[1])") : Int("\(yearArray[0])") else { return "1st" }
    guard var yearUnit = year.count > 3 ? Int("\(yearArray[3])") : Int("\(yearArray[2])") else { return ""}
    if yearUnit == 0 {
        guard let yearDec = Int("\(yearArray[2])") != 0 ? Int("\(yearArray[2])") : Int("\(yearArray[1])") else { return "" }
        yearUnit = yearDec
    }
    century += yearUnit == 0 ? 0 : 1
    var output = "\(century)"
    switch century % 20 {
    case 1:
        output += "st"
    case 2:
        output += "nd"
    case 3:
        output += "rd"
    default:
        output += "th"
    }
    print(output)
    return output
}

if "20th" == whatCentury("1999"),
    "9th" == whatCentury("850"),
    "10th" == whatCentury("909"),
    "21st" == whatCentury("2011"),
    "22nd" == whatCentury("2154"),
    "23rd" == whatCentury("2259"){
                print ("done")
}
