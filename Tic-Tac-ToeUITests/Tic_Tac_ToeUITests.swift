//
//  Tic_Tac_ToeUITests.swift
//  Tic-Tac-ToeUITests
//
//  Created by user on 11/8/16.
//  Copyright © 2016 mathsistor. All rights reserved.
//

import XCTest

class Tic_Tac_ToeUITests: XCTestCase {
    
    let app = XCUIApplication()
        
    override func setUp() {
        super.setUp()
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
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
    
}
