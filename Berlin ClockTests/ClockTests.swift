//
//  Berlin_ClockTests.swift
//  Berlin ClockTests
//
//  Created by 2021-DEV2-015 on 31/03/2021.
//

import XCTest
@testable import Berlin_Clock

class Berlin_ClockTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLowerBound() {
        guard let date = Date(from: "00:00:00", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        let clock = Clock(date: date)
        let clockDescription = "Midnight"
        XCTAssertEqual(clock.multiHour.numberOfLamps(), 0, "\(clockDescription) should have no lighted lamps for the 5 hour block")
        XCTAssertEqual(clock.singleHour.numberOfLamps(), 0, "\(clockDescription) should have no lighted lamps for the 1 hour block")
        XCTAssertEqual(clock.multiMinute.numberOfLamps(), 0, "\(clockDescription) should have no lighted lamps for the 5 minute block")
        XCTAssertEqual(clock.singleMinute.numberOfLamps(), 0, "\(clockDescription) should have no lighted lamps for the 1 minute block")
        
        for index in 1...4 {
            XCTAssertEqual(clock.multiHour.colorForLamp(at: index), .white, "\(clockDescription) should have no lighted lamps for the 5 hour block")
            XCTAssertEqual(clock.singleHour.colorForLamp(at: index), .white, "\(clockDescription) should have no lighted lamps for the 1 hour block")
            XCTAssertEqual(clock.singleMinute.colorForLamp(at: index), .white, "\(clockDescription) should have no lighted lamps for the 1 minute block")
        }
        for index in 1...11 {
            XCTAssertEqual(clock.multiMinute.colorForLamp(at: index), .white, "\(clockDescription) should have no lighted lamps for the 5 minute block")
        }
        XCTAssertEqual(clock.second.colorForLamp(), .red, "\(clockDescription) should have the seconds lamp red")
    }
    
    func testDate() {
        let clockDescription = "13:49:22"
        guard let date = Date(from: clockDescription, format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        let clock = Clock(date: date)
        XCTAssertEqual(clock.multiHour.numberOfLamps(), 2, "\(clockDescription) should have 2 lighted lamps for the 5 hour block")
        XCTAssertEqual(clock.singleHour.numberOfLamps(), 3, "\(clockDescription) should have 3 lighted lamps for the 1 hour block")
        XCTAssertEqual(clock.multiMinute.numberOfLamps(), 9, "\(clockDescription) should have 9 lighted lamps for the 5 minute block")
        XCTAssertEqual(clock.singleMinute.numberOfLamps(), 4, "\(clockDescription) should have 4 lighted lamps for the 1 minute block")
        
        for index in 1...2 {
            XCTAssertEqual(clock.multiHour.colorForLamp(at: index), .red, "\(clockDescription) should have lamp \(index) for the 5 hour block red")
        }
        for index in 3...4 {
            XCTAssertEqual(clock.multiHour.colorForLamp(at: index), .white, "\(clockDescription) should have lamp \(index) for the 5 hour block white")
        }
        for index in 1...3 {
            XCTAssertEqual(clock.singleHour.colorForLamp(at: index), .red, "\(clockDescription) should have lamp \(index) for the 5 minute block red")
        }
        for index in 4...4 {
            XCTAssertEqual(clock.singleHour.colorForLamp(at: index), .white, "\(clockDescription) should have lamp \(index) for the 5 minute block white")
        }
        for index in 1...9 {
            if index % 3 == 0 {
                XCTAssertEqual(clock.multiMinute.colorForLamp(at: index), .red, "\(clockDescription) should have lamp \(index) for the 5 minute block red")
            } else {
                XCTAssertEqual(clock.multiMinute.colorForLamp(at: index), .yellow, "\(clockDescription) should have lamp \(index) for the 5 minute block yellow")
            }
        }
        for index in 10...11 {
            XCTAssertEqual(clock.multiMinute.colorForLamp(at: index), .white, "\(clockDescription) should have lamp \(index) for the 5 minute blockwhite")
        }
        
        XCTAssertEqual(clock.second.colorForLamp(), .red, "\(clockDescription) should have the seconds lamp red")
    }
    
    func testUpperBound() {
        guard let date = Date(from: "23:59:59", format: "HH:mm:ss") else {
            XCTFail("A valid date should be created from the given format")
            return
        }
        let clockDescription = "Last second of the day"
        let clock = Clock(date: date)
        XCTAssertEqual(clock.multiHour.numberOfLamps(), 4, "\(clockDescription) should have 4 lighted lamps for the 5 hour block")
        XCTAssertEqual(clock.singleHour.numberOfLamps(), 3, "\(clockDescription) should have 3 lighted lamps for the 1 hour block")
        XCTAssertEqual(clock.multiMinute.numberOfLamps(), 11, "\(clockDescription) should have 11 lighted lamps for the 5 minute block")
        XCTAssertEqual(clock.singleMinute.numberOfLamps(), 4, "\(clockDescription) should have 4 lighted lamps for the 1 minute block")
        
        for index in 1...4 {
            XCTAssertEqual(clock.multiHour.colorForLamp(at: index), .red, "\(clockDescription) should have 4 lighted on for the 5 hour block")
            XCTAssertEqual(clock.singleHour.colorForLamp(at: index), index == 4 ? .white: .red, "\(clockDescription) should have 3 lighted lamps for the 1 hour block")
            XCTAssertEqual(clock.singleMinute.colorForLamp(at: index), .red, "\(clockDescription) should have 4 lighted lamps for the 1 minute block")
        }
        for index in 1...11 {
            if index % 3 == 0 {
                XCTAssertEqual(clock.multiMinute.colorForLamp(at: index), .red, "\(clockDescription) should have every 3rd lamp lighted red for the 5 minute block")
            } else {
                XCTAssertEqual(clock.multiMinute.colorForLamp(at: index), .yellow, "\(clockDescription) should have every 3rd lamp lighted yellow for the 5 minute block")
            }
        }
        XCTAssertEqual(clock.second.colorForLamp(), .white, "\(clockDescription) should have the seconds lamp white")
    }

}
