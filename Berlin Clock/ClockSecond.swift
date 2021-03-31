//
//  ClockSecond.swift
//  Berlin Clock
//
//  Created by 2021-DEV2-015 on 31/03/2021.
//

import Foundation
import UIKit

class ClockSecond: ClockLampProtocol {
    var date: Date
    
    required init(date: Date) {
        self.date = date
    }
    
    func colorForLamp() -> UIColor {
        guard let secondsValue = date.component(.second) else {
            return .white
        }
        return secondsValue % 2 == 0 ? .red : .white
    }
}
