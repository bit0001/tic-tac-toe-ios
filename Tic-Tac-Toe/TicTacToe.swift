//
//  TicTacToe.swift
//  Tic-Tac-Toe
//
//  Created by user on 11/9/16.
//  Copyright © 2016 mathsistor. All rights reserved.
//

import Foundation

enum Player: String {
    case X, O, E
}

class TicTacToeGame {
    
    var grid: [Player] = [
        .E, .E, .E,
        .E, .E, .E,
        .E, .E, .E]
    
    func getWinner() -> Player? {
        if isWinner(player: .X) {
            return .X
        } else if isWinner(player: .O) {
            return .O
        } else {
            return nil
        }
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
            if grid[3 * row + j] == player {
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
            if grid[3 * i + column] == player {
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
            if grid[3 * i + i] != player {
                return false
            }
        }
        return true
    }
    
    private func isWinningNegativeDiagonal(player: Player) -> Bool {
        for i in 0..<3 {
            if grid[2 * i + 2] != player {
                return false
            }
        }
        return true
    }
    
}
