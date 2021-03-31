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

struct Clock {
    
}
