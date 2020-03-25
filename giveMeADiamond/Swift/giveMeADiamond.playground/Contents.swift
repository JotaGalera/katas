func diamond(_ size: Int) -> String? {
    var output = ""
    if size > 1 , size % 2 == 1 {
        var asterix = "*"
        for i in (0..<size/2 + 1).reversed(){
            output += String(repeating: " ", count: i) + asterix + "\n"
            asterix.append("**")
            
        }
        asterix.removeLast(2)
        for i in 1...size/2{
            asterix.removeLast(2)
            output += String(repeating: " ", count: i) + asterix + "\n"
            
        }
    }else if size == 1 {
        output += "*" + "\n"
    }else {
      return nil
    }
    return output
}

if diamond(3)! == " *\n***\n *\n",
    diamond(5) == "  *\n ***\n*****\n ***\n  *\n",
    diamond(2) == nil,
    diamond(-3) == nil,
     diamond(0) == nil{
    print ("done")
}
