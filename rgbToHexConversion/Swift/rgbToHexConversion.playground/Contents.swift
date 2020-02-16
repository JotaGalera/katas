import UIKit

func rgb(_ r: Int, _ g: Int, _ b: Int) -> String {
    let rgb: [Int] = [checkParamRGBfunc(r) , checkParamRGBfunc(g), checkParamRGBfunc(b)]
    
    let red = String(format:"%02X" , rgb[0])
    let green = String(format:"%02X" , rgb[1])
    let blue = String(format:"%02X" , rgb[2])
    let rgbToHexConcatenation = red + green + blue
    print(rgbToHexConcatenation)
    return rgbToHexConcatenation
}

func checkParamRGBfunc(_ number: Int) -> Int{
    let numberChecked = number > 255 ? 255 : number < 0 ? 0 : number
    return numberChecked
}

rgb(255,255,300)

if "FFFFFF" == rgb(255,255,255),
    "FFFFFF" == rgb(255,255,300),
    "000000" == rgb(0,0,0),
    "9400D3" == rgb(148,0,211),
    "9400D3" == rgb(148,-20,211),
    "90C3D4" == rgb(144,195,212),
    "D4350C" == rgb(212,53,12) {
    print ("done")
}
