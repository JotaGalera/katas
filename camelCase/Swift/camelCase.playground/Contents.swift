func camelCase(_ str: String) -> String {
    let camelCaseString = str.split(separator: " ")
    var stringReturn = ""
    for i in camelCaseString{
        stringReturn += i.first!.uppercased() + i.dropFirst(1)
    }
    return stringReturn
}
if camelCase("test case") == "TestCase"{
    print("done")
}
