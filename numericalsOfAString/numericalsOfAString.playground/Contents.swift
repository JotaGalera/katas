func numericals(_ str: String) -> String {
    var output: String = ""
    var dictionary : [String:Int] = ["":0]
    for character in Array(String(str)) {
        if dictionary.index(forKey: String(character)) != nil {
            let characterRepeated = dictionary[String(character)] as! Int
            dictionary.updateValue(characterRepeated + 1 , forKey: String(character))
            output.append( String(characterRepeated + 1))
        } else {
            dictionary.updateValue(1, forKey: String(character))
            output.append( String(1) )
        }
    }
    return output
}

if numericals("Hello, World!") == "1112111121311",
    numericals("Hello, World! It's me, JomoPipi!") == "11121111213112111131224132411122",
    numericals("hello hello") == "11121122342",
    numericals("Hello") == "11121",
    numericals("11111") == "12345",
    numericals("hope you 123456789 expected numbers in the string") == "1111112121111111113212311414121151151262267232231",
    numericals("In this string, I'll make sure the amounts of a character go over 9") == "11111112221221132112411115312263237221234482193101343525441123124155131"{
    print ("done")
}

