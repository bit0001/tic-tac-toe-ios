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
        game.grid = [
            .X, .X, .X,
            .E, .E, .E,
            .E, .E, .E]
        XCTAssertEqual(Player.X, game.getWinner()!)
        game.grid = [
            .E, .E, .E,
            .X, .X, .X,
            .E, .E, .E]
        XCTAssertEqual(Player.X, game.getWinner()!)
        game.grid = [
            .E, .E, .E,
            .E, .E, .E,
            .X, .X, .X]
        XCTAssertEqual(Player.X, game.getWinner()!)
    }
    
    func testCheckWinner3InaRowOPattern() {
        game.grid = [
            .O, .O, .O,
            .E, .E, .E,
            .E, .E, .E]
        XCTAssertEqual(Player.O, game.getWinner()!)
        game.grid = [
            .E, .E, .E,
            .O, .O, .O,
            .E, .E, .E]
        XCTAssertEqual(Player.O, game.getWinner()!)
        game.grid = [
            .E, .E, .E,
            .E, .E, .E,
            .O, .O, .O]
        XCTAssertEqual(Player.O, game.getWinner()!)
    }

    func testCheckWinner3InaColumnXPattern() {
        game.grid = [
            .X, .E, .E,
            .X, .E, .E,
            .X, .E, .E]
        XCTAssertEqual(Player.X, game.getWinner()!)
        game.grid = [
            .E, .X, .E,
            .E, .X, .E,
            .E, .X, .E]
        XCTAssertEqual(Player.X, game.getWinner()!)
        game.grid = [
            .E, .E, .X,
            .E, .E, .X,
            .E, .E, .X]
        XCTAssertEqual(Player.X, game.getWinner()!)
    }
    
    func testCheckWinner3InaColumnOPattern() {
        game.grid = [
            .O, .E, .E,
            .O, .E, .E,
            .O, .E, .E]
        XCTAssertEqual(Player.O, game.getWinner()!)
        game.grid = [
            .E, .O, .E,
            .E, .O, .E,
            .E, .O, .E]
        XCTAssertEqual(Player.O, game.getWinner()!)
        game.grid = [
            .E, .E, .O,
            .E, .E, .O,
            .E, .E, .O]
        XCTAssertEqual(Player.O, game.getWinner()!)
    }
    
    func testCheckWinnerXDiagonalPatter() {
        game.grid = [
            .X, .E, .E,
            .E, .X, .E,
            .E, .E, .X]
        XCTAssertEqual(Player.X, game.getWinner()!)
        game.grid = [
            .E, .E, .X,
            .E, .X, .E,
            .X, .E, .E]
        XCTAssertEqual(Player.X, game.getWinner()!)
        
    }
    
    func testCheckWinnerODiagonalPatter() {
        game.grid = [
            .O, .E, .E,
            .E, .O, .E,
            .E, .E, .O]
        XCTAssertEqual(Player.O, game.getWinner()!)
        game.grid = [
            .E, .E, .O,
            .E, .O, .E,
            .O, .E, .E]
        XCTAssertEqual(Player.O, game.getWinner()!)
    }
    
}
