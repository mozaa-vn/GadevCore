//
//  GadevColorTests.swift
//  GadevCore
//
//  Created by Nguyễn Ý on 10/1/20.
//

import XCTest
@testable import GadevCore

final class GadevColorTests: XCTestCase {
    
    func testColorRedEqual() {
        let color = GadevCore.Color.fromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }

    func testFrameworkColorAreEqual() {
        let color = GadevCore.Color.fromHexString("006736")
        XCTAssertEqual(color, GadevCore.Color.frameworkColor)
    }
    
    static var allTests = [
        ("testColorRedEqual", testColorRedEqual),
        ("testFrameworkColorAreEqual", testFrameworkColorAreEqual),
    ]
    
}
