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
        let counter = 0
        guard let lowerHourDate = Date(from: "00:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        var multiHourClock = ClockMultiHour(date: lowerHourDate)
        XCTAssertEqual(multiHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at midnight")
        for index in (counter + 1)...4 {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at midnight")
        }
        
        guard let midHourDate = Date(from: "02:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        multiHourClock = ClockMultiHour(date: midHourDate)
        XCTAssertEqual(multiHourClock.numberOfLamps(), counter, "\(counter) lamps should be on for sleepwalkers")
        for index in (counter + 1)...4 {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at midnight")
        }
        
        guard let upperHourDate = Date(from: "04:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        multiHourClock = ClockMultiHour(date: upperHourDate)
        XCTAssertEqual(multiHourClock.numberOfLamps(), counter, "\(counter) lamps should be on for early birds")
        for index in (counter + 1)...4 {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at midnight")
        }
    }
    
    func testFirstLamp() throws {
        let counter = 1
        guard let lowerHourDate = Date(from: "05:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        var multiHourClock = ClockMultiHour(date: lowerHourDate)
        XCTAssertEqual(multiHourClock.numberOfLamps(), counter, "\(counter) lamp should be on at sunrise")
        for index in 1...counter {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at sunrise")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at sunrise")
        }
        
        guard let midHourDate = Date(from: "07:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        multiHourClock = ClockMultiHour(date: midHourDate)
        XCTAssertEqual(multiHourClock.numberOfLamps(), counter, "\(counter) lamp should be on at the morning coffee")
        for index in 1...counter {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at the morning coffee")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at the morning coffee")
        }
        
        guard let upperHourDate = Date(from: "09:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        multiHourClock = ClockMultiHour(date: upperHourDate)
        XCTAssertEqual(multiHourClock.numberOfLamps(), counter, "\(counter) lamp should be on at the stand up meeting")
        for index in 1...counter {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at the stand up meeting")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at the stand up meeting")
        }
    }
    
    func testSecondLamp() throws {
        let counter = 2
        guard let lowerHourDate = Date(from: "10:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        var multiHourClock = ClockMultiHour(date: lowerHourDate)
        XCTAssertEqual(multiHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at the coffee break")
        for index in 1...counter {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at the coffee break")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at the coffee break")
        }
        
        guard let midHourDate = Date(from: "12:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        multiHourClock = ClockMultiHour(date: midHourDate)
        XCTAssertEqual(multiHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at lunch")
        for index in 1...counter {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at lunch")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at lunch")
        }
        
        guard let upperHourDate = Date(from: "14:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        multiHourClock = ClockMultiHour(date: upperHourDate)
        XCTAssertEqual(multiHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at the sprint retrospective")
        for index in 1...counter {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at the sprint retrospective")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at the sprint retrospective")
        }
    }
    
    func testThirdLamp() throws {
        let counter = 3
        guard let lowerHourDate = Date(from: "15:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        var multiHourClock = ClockMultiHour(date: lowerHourDate)
        XCTAssertEqual(multiHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at the pair programming")
        for index in 1...counter {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at the pair programming")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at pair programming")
        }
        
        guard let midHourDate = Date(from: "17:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        multiHourClock = ClockMultiHour(date: midHourDate)
        XCTAssertEqual(multiHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at the version release")
        for index in 1...counter {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at the version release")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at the version release")
        }
        
        guard let upperHourDate = Date(from: "19:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        multiHourClock = ClockMultiHour(date: upperHourDate)
        XCTAssertEqual(multiHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at dinner")
        for index in 1...counter {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at dinner")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at dinner")
        }
    }
    
    func testFourthLamp() throws {
        let counter = 4
        guard let lowerHourDate = Date(from: "20:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        var multiHourClock = ClockMultiHour(date: lowerHourDate)
        XCTAssertEqual(multiHourClock.numberOfLamps(), counter, "\(counter) lamps should be on when you're out of ideas")
        
        guard let midHourDate = Date(from: "22:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        multiHourClock = ClockMultiHour(date: midHourDate)
        XCTAssertEqual(multiHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at the bed time")
        
        guard let upperHourDate = Date(from: "23:59:59", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        multiHourClock = ClockMultiHour(date: upperHourDate)
        XCTAssertEqual(multiHourClock.numberOfLamps(), counter, "\(counter) lamps should be on at the end of the day")
        for index in 1...counter {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .red, "Lamp \(counter) should be red at dinner")
        }
        for index in (counter + 1)...4 {
            XCTAssertEqual(multiHourClock.colorForLamp(at: index), .white, "Lamp \(counter) should be white at dinner")
        }
    }
}
