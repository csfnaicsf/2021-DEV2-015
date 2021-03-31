//
//  Clock.swift
//  Berlin Clock
//
//  Created by 2021-DEV2-015 on 31/03/2021.
//

import Foundation
import UIKit

protocol ClockProtocol {
    var date: Date { get set }
    init(date: Date)
}

protocol ClockLampCountableProtocol: ClockProtocol {
    func numberOfLamps() -> Int
    func colorForLamp(at index: Int) -> UIColor
}

protocol ClockLampProtocol: ClockProtocol {
    func colorForLamp() -> UIColor
}

class Clock {
    private var date: Date {
        didSet {
            multiHour.date = date
            singleHour.date = date
            multiMinute.date = date
            singleMinute.date = date
            second.date = date
        }
    }
    private(set) var multiHour: ClockMultiHour
    private(set) var singleHour: ClockSingleHour
    private(set) var multiMinute: ClockMultiMinute
    private(set) var singleMinute: ClockSingleMinute
    private(set) var second: ClockSecond
    
    required init(date: Date) {
        multiHour = ClockMultiHour(date: date)
        singleHour = ClockSingleHour(date: date)
        multiMinute = ClockMultiMinute(date: date)
        singleMinute = ClockSingleMinute(date: date)
        second = ClockSecond(date: date)
        self.date = date
    }
}
