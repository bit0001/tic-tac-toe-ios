//
//  Tic_Tac_ToeTests.swift
//  Tic-Tac-ToeTests
//
//  Created by user on 11/8/16.
//  Copyright © 2016 mathsistor. All rights reserved.
//

import XCTest

@testable import Tic_Tac_Toe
class TicTacToeGameTests: XCTestCase {
    
    let game = TicTacToeGame()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCheckWinner3InaRowXPattern() {
        let player = "X"
        game.grid = [
            player, player, player,
            " ", " ", " ",
            " ", " ", " "
        ]
        XCTAssertTrue(game.isWinner())
        game.grid = [
            " ", " ", " ",
            player, player, player,
            " ", " ", " "
        ]
        XCTAssertTrue(game.isWinner())
        game.grid = [
            " ", " ", " ",
            " ", " ", " ",
            player, player, player,
        ]
        XCTAssertTrue(game.isWinner())
    }
    
    func testCheckWinner3InaRowOPattern() {
        let player = "O"
        game.grid = [
            player, player, player,
            " ", " ", " ",
            " ", " ", " "
        ]
        XCTAssertTrue(game.isWinner())
        game.grid = [
            " ", " ", " ",
            player, player, player,
            " ", " ", " "
        ]
        XCTAssertTrue(game.isWinner())
        game.grid = [
            " ", " ", " ",
            " ", " ", " ",
            player, player, player,
        ]
        XCTAssertTrue(game.isWinner())
    }
    
    func testCheckWinner3InaColumnXPattern() {
        let player = "O"
        game.grid = [
            player, "", "",
            player, "", "",
            player, "", "",
        ]
        XCTAssertTrue(game.isWinner())
        game.grid = [
            " ", player, " ",
            " ", player, " ",
            " ", player, " ",
        ]
        XCTAssertTrue(game.isWinner())
        game.grid = [
            " ", " ", player,
            " ", " ", player,
            " ", " ", player,
        ]
        XCTAssertTrue(game.isWinner())
    }
    
    func testCheckWinner3InaColumnOPattern() {
        let player = "X"
        game.grid = [
            player, "", "",
            player, "", "",
            player, "", "",
        ]
        XCTAssertTrue(game.isWinner())
        game.grid = [
            " ", player, " ",
            " ", player, " ",
            " ", player, " ",
        ]
        XCTAssertTrue(game.isWinner())
        game.grid = [
            " ", " ", player,
            " ", " ", player,
            " ", " ", player,
        ]
        XCTAssertTrue(game.isWinner())
    }
    
    func testCheckWinnerXDiagonalPatter() {
        let player = "X"
        game.grid = [
            player, "", "",
            "", player, "",
            "", "", player,
        ]
        XCTAssertTrue(game.isWinner())
        game.grid = [
            " ", " ", player,
            " ", player, " ",
            player, " ", " ",
        ]
        XCTAssertTrue(game.isWinner())
        
    }
    
    func testCheckWinnerODiagonalPatter() {
        let player = "O"
        game.grid = [
            player, "", "",
            "", player, "",
            "", "", player,
        ]
        XCTAssertTrue(game.isWinner())
        game.grid = [
            " ", " ", player,
            " ", player, " ",
            player, " ", " ",
        ]
        XCTAssertTrue(game.isWinner())
        
    }
    
}
