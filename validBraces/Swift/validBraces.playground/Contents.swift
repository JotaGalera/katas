func validBraces(_ string:String) -> Bool {
    let arrayOfOpening = ["(","[","{"]
    let dictionaryBraces = [")":"(","]":"[","}":"{"]
    var stack : [String] = []
    
    for bracket in Array(string){
        if arrayOfOpening.contains(String(bracket)){
            stack.append(String(bracket))
        }else{
            if dictionaryBraces[String(bracket)] == stack.last{
                stack.popLast()
            }else {
                stack.append(String(bracket))
            }
        }
    }
    return stack.count == 0 ? true : false
}

if (validBraces("()")),
    (validBraces("[]")),
    (validBraces("{}")),
    (validBraces("{[()]}")),
    (validBraces("(){}[]")){
        print ("done")
}

if (validBraces("([{}])") == true),
    (validBraces("(}") == false),
    (validBraces("[(])") == false),
    (validBraces("({})[({})]") == true),
    (validBraces("(})") == false),
    (validBraces("(({{[[]]}}))") == true),
    (validBraces("{}({})[]") == true),
    (validBraces(")(}{][") == false),
    (validBraces("())({}}{()][][") == false),
    (validBraces("(((({{") == false),
    (validBraces("}}]]))}])") == false){
        print("done")
}

