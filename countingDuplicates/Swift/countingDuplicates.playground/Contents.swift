func countDuplicates(_ s:String) -> Int {
    var array = Array(s.lowercased())
    var characterRepeated = 0
    for ch in array{
        if array.count > 1 {
            array.remove(at: 0)
            if array.contains(ch) {
                characterRepeated += 1
                array = array.filter {$0 != ch}
            }
        }else{break}
    }
    return characterRepeated
}

if countDuplicates("a") == 0,
    countDuplicates("aa") == 1,
    countDuplicates("aab") == 1,
    countDuplicates("abcde") == 0,
    countDuplicates("abcdea") == 1,
    countDuplicates("indivisibility") == 1{
    print("done")
}
