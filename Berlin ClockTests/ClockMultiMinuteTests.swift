//
//  ClockMultiMinuteTests.swift
//  Berlin ClockTests
//
//  Created by 2021-DEV2-015 on 31/03/2021.
//

import XCTest
@testable import Berlin_Clock

class ClockMultiMinuteTests: XCTestCase {

    let date0 = Date(from: "00:02:00", format: "HH:mm:ss")
    let date1 = Date(from: "00:06:00", format: "HH:mm:ss")
    let date2 = Date(from: "00:14:00", format: "HH:mm:ss")
    let date3 = Date(from: "00:15:00", format: "HH:mm:ss")
    let date4 = Date(from: "00:21:00", format: "HH:mm:ss")
    let date5 = Date(from: "00:27:00", format: "HH:mm:ss")
    let date6 = Date(from: "00:30:00", format: "HH:mm:ss")
    let date7 = Date(from: "00:37:00", format: "HH:mm:ss")
    let date8 = Date(from: "00:42:00", format: "HH:mm:ss")
    let date9 = Date(from: "00:48:00", format: "HH:mm:ss")
    let date10 = Date(from: "00:54:00", format: "HH:mm:ss")
    let date11 = Date(from: "00:58:00", format: "HH:mm:ss")
    
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testNoLamp() throws {
        let counter = 0
        let minuteDescription = "minute 2"
        let multiMinuteClock = ClockMultiMinute(date: date0!)
        XCTAssertEqual(multiMinuteClock.numberOfLamps(), counter, "\(counter) lamps should be on for \(minuteDescription)")
        for index in (counter + 1)...11 {
            XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .white, "All lamps should be white for \(minuteDescription)")
        }
    }
    
    func test1stLamp() throws {
        let counter = 1
        let minuteDescription = "minute 6"
        let multiMinuteClock = ClockMultiMinute(date: date1!)
        XCTAssertEqual(multiMinuteClock.numberOfLamps(), counter, "\(counter) lamps should be on for \(minuteDescription)")
        for index in 1...counter {
            if index % 3 == 0 {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .red, "All lamps should be white for \(minuteDescription)")
            } else {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .yellow, "All lamps should be white for \(minuteDescription)")
            }
        }
        for index in (counter + 1)...11 {
            XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .white, "All lamps should be white for \(minuteDescription)")
        }
    }
    
    func test2ndLamp() throws {
        let counter = 2
        let minuteDescription = "minute 14"
        let multiMinuteClock = ClockMultiMinute(date: date2!)
        XCTAssertEqual(multiMinuteClock.numberOfLamps(), counter, "\(counter) lamps should be on for \(minuteDescription)")
        for index in 1...counter {
            if index % 3 == 0 {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .red, "All lamps should be white for \(minuteDescription)")
            } else {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .yellow, "All lamps should be white for \(minuteDescription)")
            }
        }
        for index in (counter + 1)...11 {
            XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .white, "All lamps should be white for \(minuteDescription)")
        }
    }
    
    func test3rdLamp() throws {
        let counter = 3
        let minuteDescription = "minute 15"
        let multiMinuteClock = ClockMultiMinute(date: date3!)
        XCTAssertEqual(multiMinuteClock.numberOfLamps(), counter, "\(counter) lamps should be on for \(minuteDescription)")
        for index in 1...counter {
            if index % 3 == 0 {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .red, "All lamps should be white for \(minuteDescription)")
            } else {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .yellow, "All lamps should be white for \(minuteDescription)")
            }
        }
        for index in (counter + 1)...11 {
            XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .white, "All lamps should be white for \(minuteDescription)")
        }
    }
    
    func test4thLamp() throws {
        let counter = 4
        let minuteDescription = "minute 21"
        let multiMinuteClock = ClockMultiMinute(date: date4!)
        XCTAssertEqual(multiMinuteClock.numberOfLamps(), counter, "\(counter) lamps should be on for \(minuteDescription)")
        for index in 1...counter {
            if index % 3 == 0 {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .red, "All lamps should be white for \(minuteDescription)")
            } else {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .yellow, "All lamps should be white for \(minuteDescription)")
            }
        }
        for index in (counter + 1)...11 {
            XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .white, "All lamps should be white for \(minuteDescription)")
        }
    }
    
    func test5thLamp() throws {
        let counter = 5
        let minuteDescription = "minute 27"
        let multiMinuteClock = ClockMultiMinute(date: date5!)
        XCTAssertEqual(multiMinuteClock.numberOfLamps(), counter, "\(counter) lamps should be on for \(minuteDescription)")
        for index in 1...counter {
            if index % 3 == 0 {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .red, "All lamps should be white for \(minuteDescription)")
            } else {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .yellow, "All lamps should be white for \(minuteDescription)")
            }
        }
        for index in (counter + 1)...11 {
            XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .white, "All lamps should be white for \(minuteDescription)")
        }
    }
    
    func test6thLamp() throws {
        let counter = 6
        let minuteDescription = "minute 30"
        let multiMinuteClock = ClockMultiMinute(date: date6!)
        XCTAssertEqual(multiMinuteClock.numberOfLamps(), counter, "\(counter) lamps should be on for \(minuteDescription)")
        for index in 1...counter {
            if index % 3 == 0 {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .red, "All lamps should be white for \(minuteDescription)")
            } else {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .yellow, "All lamps should be white for \(minuteDescription)")
            }
        }
        for index in (counter + 1)...11 {
            XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .white, "All lamps should be white for \(minuteDescription)")
        }
    }
    
    func test7thLamp() throws {
        let counter = 7
        let minuteDescription = "minute 37"
        let multiMinuteClock = ClockMultiMinute(date: date7!)
        XCTAssertEqual(multiMinuteClock.numberOfLamps(), counter, "\(counter) lamps should be on for \(minuteDescription)")
        for index in 1...counter {
            if index % 3 == 0 {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .red, "All lamps should be white for \(minuteDescription)")
            } else {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .yellow, "All lamps should be white for \(minuteDescription)")
            }
        }
        for index in (counter + 1)...11 {
            XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .white, "All lamps should be white for \(minuteDescription)")
        }
    }
    
    func test8thLamp() throws {
        let counter = 8
        let minuteDescription = "minute 42"
        let multiMinuteClock = ClockMultiMinute(date: date8!)
        XCTAssertEqual(multiMinuteClock.numberOfLamps(), counter, "\(counter) lamps should be on for \(minuteDescription)")
        for index in 1...counter {
            if index % 3 == 0 {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .red, "All lamps should be white for \(minuteDescription)")
            } else {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .yellow, "All lamps should be white for \(minuteDescription)")
            }
        }
        for index in (counter + 1)...11 {
            XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .white, "All lamps should be white for \(minuteDescription)")
        }
    }
    
    func test9thLamp() throws {
        let counter = 9
        let minuteDescription = "minute 48"
        let multiMinuteClock = ClockMultiMinute(date: date9!)
        XCTAssertEqual(multiMinuteClock.numberOfLamps(), counter, "\(counter) lamps should be on for \(minuteDescription)")
        for index in 1...counter {
            if index % 3 == 0 {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .red, "All lamps should be white for \(minuteDescription)")
            } else {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .yellow, "All lamps should be white for \(minuteDescription)")
            }
        }
        for index in (counter + 1)...11 {
            XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .white, "All lamps should be white for \(minuteDescription)")
        }
    }
    
    func test10thLamp() throws {
        let counter = 10
        let minuteDescription = "minute 54"
        let multiMinuteClock = ClockMultiMinute(date: date10!)
        XCTAssertEqual(multiMinuteClock.numberOfLamps(), counter, "\(counter) lamps should be on for \(minuteDescription)")
        for index in 1...counter {
            if index % 3 == 0 {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .red, "All lamps should be white for \(minuteDescription)")
            } else {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .yellow, "All lamps should be white for \(minuteDescription)")
            }
        }
        for index in (counter + 1)...11 {
            XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .white, "All lamps should be white for \(minuteDescription)")
        }
    }
    
    func test11thLamp() throws {
        let counter = 11
        let minuteDescription = "minute 58"
        let multiMinuteClock = ClockMultiMinute(date: date11!)
        XCTAssertEqual(multiMinuteClock.numberOfLamps(), counter, "\(counter) lamps should be on for \(minuteDescription)")
        for index in 1...counter {
            if index % 3 == 0 {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .red, "All lamps should be white for \(minuteDescription)")
            } else {
                XCTAssertEqual(multiMinuteClock.colorForLamp(at: index), .yellow, "All lamps should be white for \(minuteDescription)")
            }
        }
    }

}
