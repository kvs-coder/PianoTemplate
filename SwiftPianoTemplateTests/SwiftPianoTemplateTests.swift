//
//  SwiftPianoTemplateTests.swift
//  SwiftPianoTemplateTests
//
//  Created by Victor Kachalov on 24.03.18.
//  Copyright © 2018 csh. All rights reserved.
//

import XCTest
@testable import SwiftPianoTemplate

class SwiftPianoTemplateTests: XCTestCase {
    func testTangent() {
        XCTAssertTrue(Tangent.c1.rawValue == "c1")
        XCTAssertTrue(Tangent.c1s.rawValue == "c1s")
        XCTAssertTrue(Tangent.d1.rawValue == "d1")
        XCTAssertTrue(Tangent.d1s.rawValue == "d1s")
        XCTAssertTrue(Tangent.e1.rawValue == "e1")
        XCTAssertTrue(Tangent.f1.rawValue == "f1")
        XCTAssertTrue(Tangent.f1s.rawValue == "f1s")
        XCTAssertTrue(Tangent.g1.rawValue == "g1")
        XCTAssertTrue(Tangent.g1s.rawValue == "g1s")
        XCTAssertTrue(Tangent.a1.rawValue == "a1")
        XCTAssertTrue(Tangent.a1s.rawValue == "a1s")
        XCTAssertTrue(Tangent.b1.rawValue == "b1")
        XCTAssertTrue(Tangent.c2.rawValue == "c2")
    }
}
