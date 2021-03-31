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
    
    func testYear() throws {
        let validDate = Date(from: "2021", format: "yyyy")
        XCTAssertNotNil(validDate, "A valid date should be created from a date format specifying a valid year")
        XCTAssertEqual(validDate!.component(.year), 2021, "The year of the date should be the same as the year in the string")
        
        let invalidDate = Date(from: "-2021", format: "yyyy")
        XCTAssertNil(invalidDate, "A nil date should be created from a date format specifying an invalid year")
    }
    
    func testMonth() throws {
        let dateWithValidMonthLeadingZero = Date(from: "03", format: "MM")
        XCTAssertNotNil(dateWithValidMonthLeadingZero, "A valid date should be created from a date format specifying a valid month with a leading zero")
        XCTAssertEqual(dateWithValidMonthLeadingZero!.component(.month), 3, "The month of the date should be the same as the month in the string")
        
        let dateWithValidMonthNoLeadingZero = Date(from: "3", format: "M")
        XCTAssertNotNil(dateWithValidMonthNoLeadingZero, "A valid date should be created from a date format specifying a valid month without a leading zero")
        XCTAssertEqual(dateWithValidMonthNoLeadingZero!.component(.month), 3, "The month of the date should be the same as the month in the string")
        
        let dateWithInvalidMonthLeadingZero = Date(from: "00", format: "MM")
        XCTAssertNil(dateWithInvalidMonthLeadingZero, "A nil date should be created from a date format specifying an invalid month with a leading zero")
        
        let dateWithInvalidMonthNoLeadingZero = Date(from: "0", format: "M")
        XCTAssertNil(dateWithInvalidMonthNoLeadingZero, "A nil date should be created from a date format specifying an invalid month without a leading zero")
        
        let dateWithInvalidMonth = Date(from: "13", format: "MM")
        XCTAssertNil(dateWithInvalidMonth, "A nil date should be created from a date format specifying an invalid month")
    }
    
    func testDay() throws {
        // Adding year and month as well, otherwise test will fail depending on the year & month when it is executed
        let dateWithValidDayLeadingZero = Date(from: "2021-03-05", format: "yyyy-MM-dd")
        XCTAssertNotNil(dateWithValidDayLeadingZero, "A valid date should be created from a date format specifying a valid day with a leading zero")
        XCTAssertEqual(dateWithValidDayLeadingZero!.component(.year), 2021, "The year of the date should be the same as the year in the string")
        XCTAssertEqual(dateWithValidDayLeadingZero!.component(.month), 3, "The month of the date should be the same as the month in the string")
        XCTAssertEqual(dateWithValidDayLeadingZero!.component(.day), 5, "The day of the date should be the same as the day in the string")
        
        let dateWithValidDayNoLeadingZero = Date(from: "2021-03-5", format: "yyyy-MM-d")
        XCTAssertNotNil(dateWithValidDayNoLeadingZero, "A valid date should be created from a date format specifying a valid day without a leading zero")
        XCTAssertEqual(dateWithValidDayNoLeadingZero!.component(.year), 2021, "The year of the date should be the same as the year in the string")
        XCTAssertEqual(dateWithValidDayNoLeadingZero!.component(.month), 3, "The month of the date should be the same as the month in the string")
        XCTAssertEqual(dateWithValidDayNoLeadingZero!.component(.day), 5, "The day of the date should be the same as the day in the string")
       
        let dateWithInvalidDayLeadingZero = Date(from: "2021-03-00", format: "yyyy-MM-dd")
        XCTAssertNil(dateWithInvalidDayLeadingZero, "A nil date should be created from a date format specifying an invalid day with a leading zero")
        
        let dateWithInvalidMonthNoLeadingZero = Date(from: "2021-03-0", format: "yyyy-MM-d")
        XCTAssertNil(dateWithInvalidMonthNoLeadingZero, "A nil date should be created from a date format specifying an invalid day without a leading zero")
        
        let dateWithInvalidDay = Date(from: "2021-04-31", format: "yyyy-MM-dd")
        XCTAssertNil(dateWithInvalidDay, "A nil date should be created from a date format specifying an invalid day")
    }
    
    func test12HourFormat() throws {
        let dateWithValidHourLeadingZero = Date(from: "2021-03-31 05:00", format: "yyyy-MM-dd hh:mm")
        XCTAssertNotNil(dateWithValidHourLeadingZero, "A valid date should be created from a date format specifying a valid date")
        XCTAssertEqual(dateWithValidHourLeadingZero!.component(.year), 2021, "The year of the date should be the same as the year in the string")
        XCTAssertEqual(dateWithValidHourLeadingZero!.component(.month), 3, "The month of the date should be the same as the month in the string")
        XCTAssertEqual(dateWithValidHourLeadingZero!.component(.day), 29, "The day of the date should be the same as the day in the string")
        XCTAssertEqual(dateWithValidHourLeadingZero!.component(.hour), 5, "The hour of the date should be the same as the hour in the string")
        XCTAssertEqual(dateWithValidHourLeadingZero!.component(.minute), 0, "The minutes of the date should be the same as the minutes in the string")
        
        let dateWithValidHourNoLeadingZero = Date(from: "2021-03-31 5:00", format: "yyyy-MM-dd h:mm")
        XCTAssertNotNil(dateWithValidHourNoLeadingZero, "A valid date should be created from a date format specifying a valid date")
        XCTAssertEqual(dateWithValidHourNoLeadingZero!.component(.year), 2021, "The year of the date should be the same as the year in the string")
        XCTAssertEqual(dateWithValidHourNoLeadingZero!.component(.month), 3, "The month of the date should be the same as the month in the string")
        XCTAssertEqual(dateWithValidHourNoLeadingZero!.component(.day), 29, "The day of the date should be the same as the day in the string")
        XCTAssertEqual(dateWithValidHourNoLeadingZero!.component(.hour), 5, "The hour of the date should be the same as the hour in the string")
        XCTAssertEqual(dateWithValidHourNoLeadingZero!.component(.minute), 0, "The minutes of the date should be the same as the minutes in the string")
       
        let dateWithInvalidHour = Date(from: "2021-03-31 13:00", format: "yyyy-MM-dd hh:mm")
        XCTAssertNil(dateWithInvalidHour, "A nil date should be created from a date format specifying an invalid hour")
    }
    
    func test24HourFormat() throws {
        let dateWithValidHourLeadingZero = Date(from: "2021-03-31 05:22", format: "yyyy-MM-dd HH:mm")
        XCTAssertNotNil(dateWithValidHourLeadingZero, "A valid date should be created from a date format specifying a valid date")
        XCTAssertEqual(dateWithValidHourLeadingZero!.component(.year), 2021, "The year of the date should be the same as the year in the string")
        XCTAssertEqual(dateWithValidHourLeadingZero!.component(.month), 3, "The month of the date should be the same as the month in the string")
        XCTAssertEqual(dateWithValidHourLeadingZero!.component(.day), 29, "The day of the date should be the same as the day in the string")
        XCTAssertEqual(dateWithValidHourLeadingZero!.component(.hour), 5, "The hour of the date should be the same as the hour in the string")
        XCTAssertEqual(dateWithValidHourLeadingZero!.component(.minute), 22, "The minutes of the date should be the same as the minutes in the string")
        XCTAssertEqual(dateWithValidHourLeadingZero!.component(.second), 0, "The seconds of the date should be 0 if not specified in string")
        
        let dateWithValidHourNoLeadingZero = Date(from: "2021-03-31 5:22", format: "yyyy-MM-dd H:mm")
        XCTAssertNotNil(dateWithValidHourNoLeadingZero, "A valid date should be created from a date format specifying a valid date")
        XCTAssertEqual(dateWithValidHourNoLeadingZero!.component(.year), 2021, "The year of the date should be the same as the year in the string")
        XCTAssertEqual(dateWithValidHourNoLeadingZero!.component(.month), 3, "The month of the date should be the same as the month in the string")
        XCTAssertEqual(dateWithValidHourNoLeadingZero!.component(.day), 29, "The day of the date should be the same as the day in the string")
        XCTAssertEqual(dateWithValidHourNoLeadingZero!.component(.hour), 5, "The hour of the date should be the same as the hour in the string")
        XCTAssertEqual(dateWithValidHourNoLeadingZero!.component(.minute), 22, "The minutes of the date should be the same as the minutes in the string")
        XCTAssertEqual(dateWithValidHourNoLeadingZero!.component(.second), 0, "The seconds of the date should be 0 if not specified in string")
        
        let dateWithInvalidHour = Date(from: "2021-03-31 24:00", format: "yyyy-MM-dd HH:mm")
        XCTAssertNil(dateWithInvalidHour, "A nil date should be created from a date format specifying an invalid hour")
        
        let dateWithInvalidMinute = Date(from: "2021-03-31 24:60", format: "yyyy-MM-dd HH:mm")
        XCTAssertNil(dateWithInvalidMinute, "A nil date should be created from a date format specifying an invalid hour")
    }
    
    func testDate() throws {
        let date = Date(from: "2021-03-31 09:41", format: "yyyy-MM-dd HH:mm")
        XCTAssertNotNil(date, "A valid date should be created from a date format specifying a valid date")
        XCTAssertEqual(date!.component(.year), 2021, "The year of the date should be the same as the year in the string")
        XCTAssertEqual(date!.component(.month), 3, "The month of the date should be the same as the month in the string")
        XCTAssertEqual(date!.component(.day), 31, "The day of the date should be the same as the day in the string")
        XCTAssertEqual(date!.component(.hour), 9, "The hour of the date should be the same as the hour in the string")
        XCTAssertEqual(date!.component(.minute), 41, "The minute of the date should be the same as the minute in the string")
    }
 

}
