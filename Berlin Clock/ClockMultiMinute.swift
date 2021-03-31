//
//  ClockMultiMinute.swift
//  Berlin Clock
//
//  Created by 2021-DEV2-015 on 31/03/2021.
//

import Foundation
import UIKit

class ClockMultiMinute: ClockLampCountableProtocol {
    
    var date: Date
    
    required init(date: Date) {
        self.date = date
    }
    
    func numberOfLamps() -> Int {
        guard let minuteValue = date.component(.minute) else {
            return 0
        }
        return minuteValue / 5
    }
    
    func colorForLamp(at index: Int) -> UIColor {
        if (index > numberOfLamps()) {
            return .white
        }
        if (index % 3 == 0) {
            return .red
        }
        return .yellow
    }
}
