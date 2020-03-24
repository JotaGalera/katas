func digitalRoot(of number: Int) -> Int {
    var output: Int = 0
    Array(String(number)).map({
        output += Int(String($0)) ?? 0
    })
    if output > 9 {
        output = digitalRoot(of: output)
    }
    return output
}

if digitalRoot(of: 16) == 7,
    digitalRoot(of: 456) == 6{
    print("done")
}
