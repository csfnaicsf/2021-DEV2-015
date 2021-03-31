//
//  ClockSingleHourTest.swift
//  Berlin ClockTests
//
//  Created by 2021-DEV2-015 on 31/03/2021.
//

import XCTest
@testable import Berlin_Clock

class ClockSingleHourTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testNoLamp() throws {
        let counter = 0
        guard let lowerHourDate = Date(from: "00:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockSingleHour(date: lowerHourDate).numberOfLamps(), counter, "\(counter) lamps should be on at midnight")
        
        guard let midHourDate = Date(from: "10:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockSingleHour(date: midHourDate).numberOfLamps(), counter, "\(counter) lamps should be on at 10AM")
        
        guard let upperHourDate = Date(from: "20:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockSingleHour(date: upperHourDate).numberOfLamps(), counter, "\(counter) lamps should be on at 8PM")
    }
    
    func testFirstLamp() throws {
        let counter = 1
        guard let lowerHourDate = Date(from: "06:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockSingleHour(date: lowerHourDate).numberOfLamps(), counter, "\(counter) lamp should be on at 6AM")
        
        guard let midHourDate = Date(from: "11:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockSingleHour(date: midHourDate).numberOfLamps(), counter, "\(counter) lamp should be on at 11AM")
        
        guard let upperHourDate = Date(from: "21:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockSingleHour(date: upperHourDate).numberOfLamps(), counter, "1 lamp should be on at 9PM")
    }
    
    func testSecondLamp() throws {
        let counter = 2
        guard let lowerHourDate = Date(from: "07:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockSingleHour(date: lowerHourDate).numberOfLamps(), counter, "\(counter) lamps should be on at 7AM")
        
        guard let midHourDate = Date(from: "12:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockSingleHour(date: midHourDate).numberOfLamps(), counter, "\(counter) lamps should be on at 12PM")
        
        guard let upperHourDate = Date(from: "22:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockSingleHour(date: upperHourDate).numberOfLamps(), counter, "\(counter) lamps should be on at 10PM")
    }
    
    func testThirdLamp() throws {
        let counter = 3
        guard let lowerHourDate = Date(from: "08:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockSingleHour(date: lowerHourDate).numberOfLamps(), counter, "\(counter) lamps should be on at 8AM")
        
        guard let midHourDate = Date(from: "13:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockSingleHour(date: midHourDate).numberOfLamps(), counter, "\(counter) lamps should be on at 1PM")
        
        guard let upperHourDate = Date(from: "23:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockSingleHour(date: upperHourDate).numberOfLamps(), counter, "\(counter) lamps should be on at 11PM")
    }
    
    func testFourthLamp() throws {
        let counter = 4
        guard let lowerHourDate = Date(from: "09:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockSingleHour(date: lowerHourDate).numberOfLamps(), counter, "\(counter) lamps should be on at 9AM")
        
        guard let midHourDate = Date(from: "14:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockSingleHour(date: midHourDate).numberOfLamps(), counter, "\(counter) lamps should be on at 2PM")
        
        guard let upperHourDate = Date(from: "19:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockSingleHour(date: upperHourDate).numberOfLamps(), counter, "\(counter) lamps should be on at 7PM")
    }

}
