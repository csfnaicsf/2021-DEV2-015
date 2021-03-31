//
//  ClockMultiHourTests.swift
//  Berlin ClockTests
//
//  Created by 2021-DEV2-015 on 31/03/2021.
//

import XCTest
@testable import Berlin_Clock

class ClockMultiHourTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testNoLamp() throws {
        guard let lowerHourDate = Date(from: "00:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockMultiHour(date: lowerHourDate).numberOfLamps(), 0, "No lamps should be on at midnight")
        
        guard let midHourDate = Date(from: "02:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockMultiHour(date: midHourDate).numberOfLamps(), 0, "No lamps should be on for sleepwalkers")
        
        guard let upperHourDate = Date(from: "04:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockMultiHour(date: upperHourDate).numberOfLamps(), 0, "No lamps should be on for early birds")
    }
    
    func testFirstLamp() throws {
        guard let lowerHourDate = Date(from: "05:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockMultiHour(date: lowerHourDate).numberOfLamps(), 1, "1 lamp should be on at sunrise")
        
        guard let midHourDate = Date(from: "07:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockMultiHour(date: midHourDate).numberOfLamps(), 1, "1 lamp should be on for morning coffee")
        
        guard let upperHourDate = Date(from: "09:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockMultiHour(date: upperHourDate).numberOfLamps(), 1, "1 lamp should be on for stand up meeting")
    }
    
    func testSecondLamp() throws {
        guard let lowerHourDate = Date(from: "10:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockMultiHour(date: lowerHourDate).numberOfLamps(), 2, "2 lamps should be on for coffee break")
        
        guard let midHourDate = Date(from: "12:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockMultiHour(date: midHourDate).numberOfLamps(), 2, "2 lamps should be on for lunch")
        
        guard let upperHourDate = Date(from: "14:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockMultiHour(date: upperHourDate).numberOfLamps(), 2, "2 lamps should be on for sprint retrospective")
    }
    
    func testThirdLamp() throws {
        guard let lowerHourDate = Date(from: "15:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockMultiHour(date: lowerHourDate).numberOfLamps(), 3, "3 lamps should be on for pair programming")
        
        guard let midHourDate = Date(from: "17:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockMultiHour(date: midHourDate).numberOfLamps(), 3, "3 lamps should be on for version release")
        
        guard let upperHourDate = Date(from: "19:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockMultiHour(date: upperHourDate).numberOfLamps(), 3, "3 lamps should be on for dinner")
    }
    
    func testFourthLamp() throws {
        guard let lowerHourDate = Date(from: "20:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockMultiHour(date: lowerHourDate).numberOfLamps(), 4, "4 lamps should be on when you're out of ideas")
        
        guard let midHourDate = Date(from: "22:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockMultiHour(date: midHourDate).numberOfLamps(), 4, "4 lamps should be on for bed time")
        
        guard let upperHourDate = Date(from: "23:59:59", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        XCTAssertEqual(ClockMultiHour(date: upperHourDate).numberOfLamps(), 4, "4 lamps should be on at the end of the day")
    }
}
