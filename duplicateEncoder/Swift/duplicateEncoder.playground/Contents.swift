import Foundation

func duplicateEncode(_ word: String) -> String {
    let arrayOriginalWord = Array(word.lowercased())
    var output = ""

    for i in 0..<arrayOriginalWord.count{
        var arrayWithRestOfCharacters = arrayOriginalWord
        _ = arrayWithRestOfCharacters.remove(at: i)
        if arrayWithRestOfCharacters.contains(arrayOriginalWord[i]){
            output += ")"
        }else{
            output += "("
        }
    }
    return output
}

if duplicateEncode("din") == "(((",
    duplicateEncode("recede") == "()()()",
    duplicateEncode("Success") == ")())())",
    duplicateEncode("(( @") == "))(("{
    print (true)
}
