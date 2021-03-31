//
//  DateUtilsTest.swift
//  Berlin ClockTests
//
//  Created by 2021-DEV2-015 on 31/03/2021.
//

import XCTest
@testable import Berlin_Clock

class DateUtilsTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testDate() throws {
        let date = Date(from: "2021-03-31 09:41", format: "yyyy-MM-dd HH:mm")
        XCTAssertNotNil(date, "A valid date should be created from a date format specifying a valid date")
    }

}
