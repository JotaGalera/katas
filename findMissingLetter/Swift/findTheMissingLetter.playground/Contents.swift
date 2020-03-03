func findMissingLetter(_ chArr: [Character]) -> Character {
  var char = chArr[0].asciiValue
  var output : Character?
  for i in 1..<chArr.count{
      guard char! + 1 == chArr[i].asciiValue else{
          output = Character(UnicodeScalar((char! + 1)))
          break
      }
      char! += 1
  }
  return output!
}

if findMissingLetter(["a","b","c","d","f"]) == "e",
    findMissingLetter(["O","Q","R","S"]) == "P"{
    print ("done")
}
