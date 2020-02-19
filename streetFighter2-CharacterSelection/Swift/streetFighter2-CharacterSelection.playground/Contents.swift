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
    let width = fighters[0].count
    moves.map({
        if $0 == Direction.left {
            currentPosition.column = ((currentPosition.column + 5 ) % width)
        }
        else if $0 == Direction.right {
            currentPosition.column = ((currentPosition.column + 1) % width)
        }
        else if $0 == Direction.up {
            currentPosition.row = 0
        }
        else{
            currentPosition.row = 1
        }
        charactersSelectedArray.append(fighters[currentPosition.row][currentPosition.column])
    })
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
    
