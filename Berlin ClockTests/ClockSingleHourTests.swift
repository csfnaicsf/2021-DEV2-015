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
        var singleHourClock = ClockSingleHour(date: lowerHourDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at 12AM")
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at 12AM")
        }
        
        guard let midHourDate = Date(from: "10:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        singleHourClock = ClockSingleHour(date: midHourDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at 10AM")
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at 10AM")
        }
        
        guard let upperHourDate = Date(from: "20:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        singleHourClock = ClockSingleHour(date: upperHourDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at 8PM")
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at 8PM")
        }
    }
    
    func testFirstLamp() throws {
        let counter = 1
        guard let lowerHourDate = Date(from: "06:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        var singleHourClock = ClockSingleHour(date: lowerHourDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamp should be on at 6AM")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red 6AM")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at 6AM")
        }
        
        guard let midHourDate = Date(from: "11:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        singleHourClock = ClockSingleHour(date: midHourDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamp should be on at 11AM")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at 11AM")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at 11AM")
        }
        
        guard let upperHourDate = Date(from: "21:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        singleHourClock = ClockSingleHour(date: upperHourDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "1 lamp should be on at 9PM")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at 9PM")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at 9PM")
        }
    }
    
    func testSecondLamp() throws {
        let counter = 2
        guard let lowerHourDate = Date(from: "07:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        var singleHourClock = ClockSingleHour(date: lowerHourDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at 7AM")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at 7AM")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at 7AM")
        }
        
        guard let midHourDate = Date(from: "12:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        singleHourClock = ClockSingleHour(date: midHourDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at 12PM")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at 12PM")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at 12PM")
        }
        
        guard let upperHourDate = Date(from: "22:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        singleHourClock = ClockSingleHour(date: upperHourDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at 10PM")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at 10PM")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at 10PM")
        }
    }
    
    func testThirdLamp() throws {
        let counter = 3
        guard let lowerHourDate = Date(from: "08:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        var singleHourClock = ClockSingleHour(date: lowerHourDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at 8AM")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at 8AM")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at 8AM")
        }
        
        guard let midHourDate = Date(from: "13:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        singleHourClock = ClockSingleHour(date: midHourDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at 1PM")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at 1PM")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at 1PM")
        }
        
        guard let upperHourDate = Date(from: "23:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        singleHourClock = ClockSingleHour(date: upperHourDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at 11PM")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at 11PM")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at 11PM")
        }
    }
    
    func testFourthLamp() throws {
        let counter = 4
        guard let lowerHourDate = Date(from: "09:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        var singleHourClock = ClockSingleHour(date: lowerHourDate)
        XCTAssertEqual(ClockSingleHour(date: lowerHourDate).numberOfLamps(), counter, "\(counter) lamps should be on at 9AM")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at 9AM")
        }
        
        guard let midHourDate = Date(from: "14:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        singleHourClock = ClockSingleHour(date: midHourDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at 2PM")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at 2PM")
        }
        
        guard let upperHourDate = Date(from: "19:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        singleHourClock = ClockSingleHour(date: upperHourDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at 7PM")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at 7PM")
        }
    }

}
