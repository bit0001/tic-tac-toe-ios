//
//  TicTacToe.swift
//  Tic-Tac-Toe
//
//  Created by user on 11/9/16.
//  Copyright © 2016 mathsistor. All rights reserved.
//

import Foundation

class TicTacToeGame {
    var grid = [" ", " ", " ",
                " ", " ", " ",
                " ", " ", " "]
    
    enum Player: String {
        case X, O, E
    }
    
    func isWinner() -> Bool {
        return isWinner(player: .X) || isWinner(player: .O)
    }
    
    private func isWinner(player: Player) -> Bool {
        return isWinningRowPattern(player: player) || isWinningColumnPattern(player: player) || isWinningDiagonalPatter(player: player)
    }
    
    private func isWinningRowPattern(player: Player) -> Bool {
        for i in 0..<3 {
            if isWinningRow(row: i, player: player) {
                return true
            }
        }
        return false
    }
    
    private func isWinningRow(row: Int, player: Player) -> Bool {
        for j in 0..<3 {
            if grid[3 * row + j] == player.rawValue {
                continue
            }
            return false
        }
        return true
    }
    
    private func isWinningColumnPattern(player: Player) -> Bool {
        for j in 0..<3 {
            if isWinningColumn(column: j, player: player) {
                return true
            }
        }
        return false
    }
    
    private func isWinningColumn(column: Int, player: Player) -> Bool {
        for i in 0..<3 {
            if grid[3 * i + column] == player.rawValue {
                continue
            }
            return false
        }
        return true
    }
    
    private func isWinningDiagonalPatter(player: Player) -> Bool {
        return isWinningPositiveDiagonal(player: player) || isWinningNegativeDiagonal(player: player)
    }
    
    private func isWinningPositiveDiagonal(player: Player) -> Bool {
        for i in 0..<3 {
            if grid[3 * i + i] != player.rawValue {
                return false
            }
        }
        return true
    }
    
    private func isWinningNegativeDiagonal(player: Player) -> Bool {
        for i in 0..<3 {
            if grid[2 * i + 2] != player.rawValue {
                return false
            }
        }
        return true
    }
    
}
