//
//  RockPaperScissorsUITests.swift
//  RockPaperScissorsUITests
//
//  Created by Ángel Saghir Rodríguez Fernández on 18/08/22.
//

import XCTest

 class RockPaperScissorsUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testIncrementarMarcador() throws{
        let app = XCUIApplication()
        app.launch()
    }

    func testPiedra() throws {
        let app = XCUIApplication()
        app.launch()
        
        //GIVEN
        let prueba = app.buttons["Rock"]
        
        //WHEN
        prueba.tap()
        
        //THEN
        let leleCOMPU = app.staticTexts["selectM"]
        XCTAssertNotEqual(leleCOMPU.label, "")
        
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPapel() throws {
        let app = XCUIApplication()
        app.launch()
        
        //GIVEN
        let prueba = app.buttons["Paper"]
        
        //WHEN
        prueba.tap()
        
        //THEN
        let leleCOMPU = app.staticTexts["selectM"]
        XCTAssertNotEqual(leleCOMPU.label, "")
        
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testTijeras() throws {
        let app = XCUIApplication()
        app.launch()
        
        //GIVEN
        let prueba = app.buttons["Scissors"]
        
        //WHEN
        prueba.tap()
        
        //THEN
        let leleCOMPU = app.staticTexts["selectM"]
        XCTAssertNotEqual(leleCOMPU.label, "")
        
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
