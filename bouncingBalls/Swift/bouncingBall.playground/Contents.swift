import UIKit

func bouncingBall(_ h: Double, _ bounce: Double, _ window: Double) -> Int {
    var output = -1
    if h > 0 , bounce > 0 , bounce < 1 , window > 0 , window < h {
        var numberOfTimesMotherSeesBall = 1
        var heigthWithFirstBallBounce = h * bounce
        while(heigthWithFirstBallBounce > window){
            heigthWithFirstBallBounce = heigthWithFirstBallBounce * bounce
            numberOfTimesMotherSeesBall += 2
        }
        output = numberOfTimesMotherSeesBall
    }
    return output
}

func test(_ h: Double, _ bounce: Double, _ window: Double, _ expected: Int){
    if bouncingBall(h, bounce, window) == expected{
        print ("good job!")
    }
}

test(3, 0.66, 1.5, 3)
test(30, 0.66, 1.5, 15)
test(10, 0.6, 10, -1)
test(40, 1, 10, -1)
