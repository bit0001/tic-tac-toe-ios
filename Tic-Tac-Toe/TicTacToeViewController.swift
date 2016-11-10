//
//  ViewController.swift
//  Tic-Tac-Toe
//
//  Created by user on 11/8/16.
//  Copyright © 2016 mathsistor. All rights reserved.
//

import UIKit

class TicTacToeViewController: UIViewController {
    
    var game = TicTacToeGame()
    var player: TicTacToeGame.Player = .X
    
    @IBAction func markCell(_ sender: UIButton) {
        if let identifier = sender.accessibilityIdentifier, let index = Int(identifier) {
            if game.grid[index] == .E {
                game.grid[index] = player
                sender.setTitle(player.rawValue, for: .normal)
                player = player == .X ? .O : .X
            }
        }
    }
}

