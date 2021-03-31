//
//  ClockSingleMinuteTests.swift
//  Berlin ClockTests
//
//  Created by 2021-DEV2-015 on 31/03/2021.
//

import XCTest
@testable import Berlin_Clock

class ClockSingleMinuteTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testNoLamp() throws {
        let counter = 0
        guard let lowerMinuteDate = Date(from: "00:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        var singleHourClock = ClockSingleMinute(date: lowerMinuteDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at minute 0")
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at minute 0")
        }
        
        guard let midMinuteDate = Date(from: "00:30:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        singleHourClock = ClockSingleMinute(date: midMinuteDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at minute 30")
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at minute 30")
        }
        
        guard let upperMinuteDate = Date(from: "00:55:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        singleHourClock = ClockSingleMinute(date: upperMinuteDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at minute 55")
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at minute 55")
        }
    }
    
    func testFirstLamp() throws {
        let counter = 1
        guard let lowerMinuteDate = Date(from: "00:06:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        var singleHourClock = ClockSingleMinute(date: lowerMinuteDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamp should be on at minute 6")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at minute 6")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at minute 6")
        }
        
        guard let midMinuteDate = Date(from: "00:26:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        singleHourClock = ClockSingleMinute(date: midMinuteDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamp should be on at minute 26")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at minute 26")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at minute 26")
        }
        
        guard let upperMinuteDate = Date(from: "00:51:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        singleHourClock = ClockSingleMinute(date: upperMinuteDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamp should be on at minute 51")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red minute 51")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at minute 51")
        }
    }
    
    func testSecondLamp() throws {
        let counter = 2
        guard let lowerMinuteDate = Date(from: "00:02:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        var singleHourClock = ClockSingleMinute(date: lowerMinuteDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at minute 2")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at minute 2")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at minute 2")
        }
        
        guard let midMinuteDate = Date(from: "00:32:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        singleHourClock = ClockSingleMinute(date: midMinuteDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at minute 32")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at minute 32")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at minute 32")
        }
        
        guard let upperMinuteDate = Date(from: "00:57:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        singleHourClock = ClockSingleMinute(date: upperMinuteDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at minute 57")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at minute 57")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at minute 57")
        }
    }
    
    func testThirdLamp() throws {
        let counter = 3
        guard let lowerMinuteDate = Date(from: "00:13:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        var singleHourClock = ClockSingleMinute(date: lowerMinuteDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at minute 13")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at minute 13")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at minute 13")
        }
        
        guard let midMinuteDate = Date(from: "00:38:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        singleHourClock = ClockSingleMinute(date: midMinuteDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at minute 38")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at minute 38")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at minute 38")
        }
        
        guard let upperMinuteDate = Date(from: "00:48:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        singleHourClock = ClockSingleMinute(date: upperMinuteDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at minute 49")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at minute 49")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at minute 49")
        }
    }
    
    func testFourthLamp() throws {
        let counter = 4
        guard let lowerMinuteDate = Date(from: "00:09:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        var singleHourClock = ClockSingleMinute(date: lowerMinuteDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at minute 9")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at minute 9")
        }
        
        guard let midMinuteDate = Date(from: "00:29:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        singleHourClock = ClockSingleMinute(date: midMinuteDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at minute 29")
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at minute 29")
        }
        
        guard let upperMinuteDate = Date(from: "00:59:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        for index in 1...counter {
            XCTAssertEqual(singleHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at minute 59")
        }
        singleHourClock = ClockSingleMinute(date: upperMinuteDate)
        XCTAssertEqual(singleHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at minute minute 59")
    }

}
