func findOutlier(_ array: [Int]) -> Int {
    var odds : [Int] = []
    var pairs : [Int ] = []
    for i in array{
        abs(i) % 2 == 0 ? pairs.append(i) : odds.append(i)
    }
    return pairs.count < odds.count ? pairs[0] : odds[0]
}

if findOutlier([1, 33, 10053359313, 2, 1, 1, 1, 1, 1, 1, -3, 9]) == 2,
    findOutlier([8, 80, 14, 2, 20, 0, 21, 80]) == 21{
    print ("done")
}
