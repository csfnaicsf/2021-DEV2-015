//
//  DateUtils.swift
//  Berlin Clock
//
//  Created by 2021-DEV2-015 on 31/03/2021.
//

import Foundation

extension Date {
    
    init?(from string: String, format: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        guard let date = dateFormatter.date(from: string) else {
            return nil
        }
        self.init(timeInterval: 0, since: date)
    }
    
}
