func evaluate(good: String, vsEvil evil: String) -> String {
    var totalGoodPoints: Int = 0
    var totalBadPoints: Int = 0
    for (i,j) in zip([1,2,3,3,4,10], good.split(separator: " ").map({Int($0)})){
        totalGoodPoints += i * (j ?? 0)
    }
    for (i,j) in zip([1,2,2,2,3,5,10], evil.split(separator: " ").map({Int($0)})){
        totalBadPoints += i * (j ?? 0)
    }
    
    return totalGoodPoints > totalBadPoints ? "Battle Result: Good triumphs over Evil" : (totalGoodPoints == totalBadPoints ? "Battle Result: No victor on this battle field" : "Battle Result: Evil eradicates all trace of Good")
}

if "Battle Result: Evil eradicates all trace of Good" == evaluate(good: "1 1 1 1 1 1", vsEvil: "1 1 1 1 1 1 1"),
    "Battle Result: Good triumphs over Evil" == evaluate(good: "0 0 0 0 0 10", vsEvil: "0 1 1 1 1 0 0"),
    "Battle Result: No victor on this battle field" == evaluate(good: "1 0 0 0 0 0", vsEvil: "1 0 0 0 0 0 0"){
    print("done")
}
