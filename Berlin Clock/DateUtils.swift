//
//  DateUtils.swift
//  Berlin Clock
//
//  Created by 2021-DEV2-015 on 31/03/2021.
//

import Foundation

extension Date {
    
    enum DateComponentType {
        case year, month, day, hour, minute, second, nanosecond
    }
    
    init?(from string: String, format: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        guard let date = dateFormatter.date(from: string) else {
            return nil
        }
        self.init(timeInterval: 0, since: date)
    }
    
    func component(_ component: DateComponentType) -> Int? {
        let components = Calendar.current.dateComponents([
            Calendar.Component.year,
            Calendar.Component.month,
            Calendar.Component.day,
            Calendar.Component.hour,
            Calendar.Component.minute,
            Calendar.Component.second,
            Calendar.Component.nanosecond
        ], from: self)
        switch component {
        case .year:
            return components.year
        case .month:
            return components.month
        case .day:
            return components.day
        case .hour:
            return components.hour
        case .minute:
            return components.minute
        case .second:
            return components.second
        case .nanosecond:
            return components.nanosecond
        }
    }
    
}
