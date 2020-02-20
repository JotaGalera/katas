enum Direction: Int{
    case up
    case left
    case down
    case right
}

let fighters = [
    ["Ryu", "E.Honda",  "Blanka",   "Guile", "Balrog", "Vega"],
    ["Ken", "Chun Li", "Zangief", "Dhalsim",  "Sagat", "M.Bison"]
]

func streetFighterSelection(fighters: [[String]], position: (row: Int, column: Int), moves: [Direction]) -> [String] {
    var charactersSelectedArray : [String] = []
    var currentPosition = position
    let width = fighters[0].count - 1
    for move in moves{
        switch move {
            case .up:
                currentPosition.row = 0
                break
            case .down:
                currentPosition.row = 1
                break
            case .left:
                currentPosition.column = currentPosition.column == 0 ? currentPosition.column + width : currentPosition.column - 1
                break
            case .right:
                currentPosition.column = currentPosition.column == width ? 0 : currentPosition.column + 1
                break
        }
        charactersSelectedArray.append(fighters[currentPosition.row][currentPosition.column])
    }
    return charactersSelectedArray
}
 
if streetFighterSelection(fighters: fighters, position: (0,0), moves: []) == [],
    streetFighterSelection(fighters: fighters, position: (0,0), moves: [.up, .left, .right, .left, .left]) == ["Ryu", "Vega", "Ryu", "Vega", "Balrog"],
    streetFighterSelection(fighters: fighters, position: (0,0), moves: [.left, .left, .left, .left, .left, .left, .left, .left]) == ["Vega", "Balrog", "Guile", "Blanka", "E.Honda", "Ryu", "Vega", "Balrog"],
    streetFighterSelection(fighters: fighters, position: (0,0), moves: [.right, .right, .right, .right, .right, .right, .right, .right]) == ["E.Honda", "Blanka", "Guile", "Balrog", "Vega", "Ryu", "E.Honda", "Blanka"],
    streetFighterSelection(fighters: fighters, position: (0,0), moves: [.up, .left, .down, .right, .up, .left, .down, .right]) == ["Ryu", "Vega", "M.Bison", "Ken", "Ryu", "Vega", "M.Bison", "Ken"],
    streetFighterSelection(fighters: fighters, position: (0,0), moves: [.down, .down, .down, .down]) == ["Ken", "Ken", "Ken", "Ken"],
    streetFighterSelection(fighters: fighters, position: (0,0), moves: [.up, .up, .up, .up]) == ["Ryu", "Ryu", "Ryu", "Ryu"]{
    print("done")
}
    
