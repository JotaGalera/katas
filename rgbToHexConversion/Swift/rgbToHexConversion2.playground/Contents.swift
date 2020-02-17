import UIKit

func rgb(_ r: Int, _ g: Int, _ b: Int) -> String {
    let rgb = [checkParamRGBfunc(r) , checkParamRGBfunc(g), checkParamRGBfunc(b)]
    
    let rgbString = rgb.map({ String(format:"%02X" , $0) })
    print(rgbString.joined())
    return rgbString.joined()
}

func checkParamRGBfunc(_ number: Int) -> Int{
    let numberChecked = max(min(255, number),0)
    return numberChecked
}

if "FFFFFF" == rgb(255,255,255),
    "FFFFFF" == rgb(255,255,300),
    "000000" == rgb(0,0,0),
    "9400D3" == rgb(148,0,211),
    "9400D3" == rgb(148,-20,211),
    "90C3D4" == rgb(144,195,212),
    "D4350C" == rgb(212,53,12) {
    print ("done")
}
