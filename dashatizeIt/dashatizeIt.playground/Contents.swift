func dashatize(_ number: Int) -> String {
    let numberString = Array(String(abs(number))).map(String.init)
    var output = ""
    var flagLastNumberOdd = false
    for i in 0..<numberString.count{
        let numb = Int(numberString[i]) ?? 0
        if (i == 0){
            if numb % 2 == 1 && numberString.count > 1{
                output += "\(numb)-"
                flagLastNumberOdd = true
            }else{
                output += "\(numb)"
            }
        }else if i == (numberString.count - 1){
            if numb % 2 == 1, flagLastNumberOdd == false{
                output += "-\(numb)"
            }else{
                output += "\(numb)"
            }
        } else {
            if numb % 2 == 1, flagLastNumberOdd == false{
                output += "-\(numb)-"
                flagLastNumberOdd = true
            }else if numb % 2 == 1, flagLastNumberOdd == true{
                output += "\(numb)-"
            }else{
                output += "\(numb)"
                flagLastNumberOdd = false
            }
        }
    }
    return output
}
dashatize(-1)
if dashatize(274) == "2-7-4",
    dashatize(5311) == "5-3-1-1",
    dashatize(86320) == "86-3-20",
    dashatize(974302) == "9-7-4-3-02",
    dashatize(0) == "0",
    dashatize(-1) == "1",
    dashatize(-28369) == "28-3-6-9"{
    print("done")
}
