//
//  SwiftPianoTemplateUITests.swift
//  SwiftPianoTemplateUITests
//
//  Created by Florian on 15.07.20.
//  Copyright © 2020 csh. All rights reserved.
//

import XCTest

class SwiftPianoTemplateUITests: XCTestCase {
    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        
    }

    func testButtonsState() throws {
        let app = XCUIApplication()
        app.launch()
        XCTAssertEqual(app.buttons.count, 13)
        let c1 = app.buttons["c1"]
        let c1s = app.buttons["c1s"]
        let d1 = app.buttons["d1"]
        let d1s = app.buttons["d1s"]
        let e1 = app.buttons["e1"]
        let f1 = app.buttons["f1"]
        let f1s = app.buttons["f1s"]
        let g1 = app.buttons["g1"]
        let g1s = app.buttons["g1s"]
        let a1 = app.buttons["a1"]
        let a1s = app.buttons["a1s"]
        let b1 = app.buttons["b1"]
        let c2 = app.buttons["c2"]
        XCTAssertEqual(c1.label, "c1")
        XCTAssertEqual(c1s.label, "c1s")
        XCTAssertEqual(d1.label, "d1")
        XCTAssertEqual(d1s.label, "d1s")
        XCTAssertEqual(e1.label, "e1")
        XCTAssertEqual(f1.label, "f1")
        XCTAssertEqual(f1s.label, "f1s")
        XCTAssertEqual(g1.label, "g1")
        XCTAssertEqual(g1s.label, "g1s")
        XCTAssertEqual(a1.label, "a1")
        XCTAssertEqual(a1s.label, "a1s")
        XCTAssertEqual(b1.label, "b1")
        XCTAssertEqual(c2.label, "c2")
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
