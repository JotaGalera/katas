func pyramid(_ n: Int) -> [[Int]] {
    var pyramidWidth: [Int] = []
    var pyramidHeigh: [[Int]] = []
    for _ in 0..<n{
        pyramidWidth.append(1)
        pyramidHeigh.append(pyramidWidth)
    }
    return pyramidHeigh
}

if pyramid(0) == [],
    pyramid(1) == [[1]],
    pyramid(2) == [[1], [1, 1]],
    pyramid(3) == [[1], [1, 1], [1, 1, 1]]{
                print("done")
}
