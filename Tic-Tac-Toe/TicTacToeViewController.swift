import UIKit

class TicTacToeViewController: UIViewController {
    @IBOutlet weak var gameTitle: UILabel!
    @IBOutlet weak var cell0: UIButton!
    @IBOutlet weak var cell1: UIButton!
    @IBOutlet weak var cell2: UIButton!
    @IBOutlet weak var cell3: UIButton!
    @IBOutlet weak var cell4: UIButton!
    @IBOutlet weak var cell5: UIButton!
    @IBOutlet weak var cell6: UIButton!
    @IBOutlet weak var cell7: UIButton!
    @IBOutlet weak var cell8: UIButton!

    var cells: [UIButton]!
    var remainingTurns: Int! {
        didSet {
            switch remainingTurns {
            case 0:
                gameTitle.text = "There is a draw"
            case 9:
                gameTitle.text = "Tic-Tac-Toe!"
            default:
                break
            }
        }
    }

    var game = TicTacToeGame()
    var player: Player = .X
    var isSinglePlayer = false

    override func viewDidLoad() {
        cells = [
            cell0, cell1, cell2,
            cell3, cell4, cell5,
            cell6, cell7, cell8]
        remainingTurns = cells.count
    }
    
    @IBAction func markCell(_ sender: UIButton) {
        if game.getWinner() == nil {
            if let identifier = sender.accessibilityIdentifier, let index = Int(identifier) {
                if game.grid[index] == .E {
                    game.grid[index] = player
                    sender.setTitle(player.rawValue, for: .normal)
                    player = player == .X ? .O : .X
                    remainingTurns = remainingTurns - 1
                    if isSinglePlayer {
                        play()
                    }
                    updateUI()
                }
            }
        }
    }
    
    @IBAction func startNewGAme() {
        game = TicTacToeGame()
        player = .X
        remainingTurns = cells.count
        for cell in cells {
            cell.setTitle(" ", for: .normal)
        }
    }
    
    private func updateUI() {
        if let winner = game.getWinner() {
            gameTitle.text = "Player \(winner.rawValue) is the winner"
        }
    }
    
    private func play() {
        var available = [Int]()
        for i in 0..<game.grid.count {
            if game.grid[i] == .E {
                available.append(i)
            }
        }
        
        if available.count > 0 {
            let index = available[Int(arc4random_uniform(UInt32(available.count)))]
            game.grid[index] = player
            cells[index].setTitle(player.rawValue, for: .normal)
            player = .X
            remainingTurns = remainingTurns - 1
        }
    }
}
