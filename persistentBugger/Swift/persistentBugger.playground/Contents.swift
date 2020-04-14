func persistence(for num: Int) -> Int {
    var result = num
    var iterations = 0
    (result, iterations) = num > 9 ? multiply(num: result,iterations: iterations) : (0,0)
    return iterations
}
func multiply(num: Int,iterations: Int)->(Int,Int){
    var result = 1
    for i in String(num){
        result = result * Int(String(i))!
    }
    var iterate = iterations + 1
    if result > 9 {
        (result,iterate) = multiply(num: result, iterations: iterate)
    }
    return (result,iterate)
}

if persistence(for: 18) == 1,
    persistence(for: 28) == 2{
    print("done")
}
