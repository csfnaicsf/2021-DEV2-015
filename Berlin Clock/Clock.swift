//
//  Clock.swift
//  Berlin Clock
//
//  Created by 2021-DEV2-015 on 31/03/2021.
//

import Foundation

protocol ClockProtocol {
    var date: Date { get set }
    init(date: Date)
}

protocol ClockLampCountableProtocol: ClockProtocol {
    func numberOfLamps() -> Int
}

struct Clock {
    
}
