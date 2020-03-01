func solution(_ num: Int) -> Int {
    var arrayMultiples: [Int] = []
    for i in 0..<num{
        if i % 3 == 0 || i % 5 == 0 {
            arrayMultiples.append(i)
        }
    }
    return arrayMultiples.reduce(0,+)
}

if (solution(10) == 23),
    (solution(20) == 78),
    (solution(200) == 9168){
    print("done")
}
