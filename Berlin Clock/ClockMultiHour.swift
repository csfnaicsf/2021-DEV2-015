//
//  ClockMultiHour.swift
//  Berlin Clock
//
//  Created by 2021-DEV2-015 on 31/03/2021.
//

import Foundation

class ClockMultiHour: ClockLampCountableProtocol {
    
    var date: Date
    
    required init(date: Date) {
        self.date = date
    }
    
    func numberOfLamps() -> Int {
        guard let hourValue = date.component(.hour) else {
            return 0
        }
        return hourValue / 5
    }
}
