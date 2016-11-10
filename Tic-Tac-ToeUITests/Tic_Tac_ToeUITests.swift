//
//  Tic_Tac_ToeUITests.swift
//  Tic-Tac-ToeUITests
//
//  Created by user on 11/8/16.
//  Copyright © 2016 mathsistor. All rights reserved.
//

import XCTest

class TicTacToeTwoPlayersUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        super.setUp()
        app.launch()
        app.buttons["Two Players"].tap()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testPlayerMovements() {
        app.buttons["0"].tap()
        app.buttons["1"].tap()
        XCTAssertEqual("X", app.buttons["0"].label)
        XCTAssertEqual("O", app.buttons["1"].label)
    }
    
    func testPlayerCannotUndoPreviousPlayerMovement() {
        app.buttons["0"].tap()
        app.buttons["0"].tap()
        XCTAssertEqual("X", app.buttons["0"].label)
    }

    func testPlayerXWins() {
        app.buttons["0"].tap()
        app.buttons["1"].tap()
        app.buttons["4"].tap()
        app.buttons["5"].tap()
        app.buttons["8"].tap()
        XCTAssertEqual("Player X is the winner", XCUIApplication().staticTexts["game_title"].label)
    }
    
    func testPlayerOWins() {
        app.buttons["3"].tap()
        app.buttons["0"].tap()
        app.buttons["4"].tap()
        app.buttons["1"].tap()
        app.buttons["7"].tap()
        app.buttons["2"].tap()
        XCTAssertEqual("Player O is the winner", XCUIApplication().staticTexts["game_title"].label)
    }
    
    func testDraw() {
        app.buttons["0"].tap()
        app.buttons["1"].tap()
        app.buttons["3"].tap()
        app.buttons["4"].tap()
        app.buttons["7"].tap()
        app.buttons["6"].tap()
        app.buttons["2"].tap()
        app.buttons["5"].tap()
        app.buttons["8"].tap()
        XCTAssertEqual("There is a draw", XCUIApplication().staticTexts["game_title"].label)
    }
    
    func testNewGame() {
        let app = XCUIApplication()
        app.buttons["0"].tap()
        app.buttons["1"].tap()
        app.buttons["4"].tap()
        app.buttons[" New Game "].tap()
        XCTAssertEqual("Tic-Tac-Toe!", XCUIApplication().staticTexts["game_title"].label)

        for i in 0..<9 {
            XCTAssertEqual(" ", app.buttons["\(i)"].label)
        }
    }
    
}
