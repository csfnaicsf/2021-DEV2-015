//
//  ClockSecondTests.swift
//  Berlin ClockTests
//
//  Created by 2021-DEV2-015 on 31/03/2021.
//

import XCTest
@testable import Berlin_Clock

class ClockSecondTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testEvenSeconds() {
        guard let evenSecond = Date(from: "00:00:42", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockSecond(date: evenSecond).colorForLamp(), .red, "Even seconds should have a red lamp")
    }
    
    func testOddSeconds() {
        guard let oddSecond = Date(from: "00:00:21", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockSecond(date: oddSecond).colorForLamp(), .white, "Odd seconds should have a white lamp")
    }

}
