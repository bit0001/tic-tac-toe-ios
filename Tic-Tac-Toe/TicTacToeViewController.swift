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
        sender.setTitle(player.rawValue, for: .normal)
        switchPlayer()
     }
    
    private func switchPlayer() {
        player = player == .X ? .O : .X
    }
    

}

