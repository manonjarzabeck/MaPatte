//
//  Date+extension.swift
//  MaPatte
//
//  Created by Mathieu Nivelles on 04/06/2026.
//  Copyright © 2026 Mathieu Nivelles. All rights reserved.
//

import Foundation

extension Date {
    
    static func from(year: Int,
                     month: Int,
                     day: Int,
                     hour: Int = 0,
                     minute: Int = 0,
                     second: Int = 0
    ) -> Date {
        DateComponents(
            calendar: .current,
            year: year,
            month: month,
            day: day,
            hour: hour,
            minute: minute,
            second: second
        ).date ?? .now
    }
    
    // https://stackoverflow.com/a/25232091
    var ageString: String {
        let calendar = Calendar.current
        
        let age = calendar.dateComponents([.year], from: self, to: .now).year ?? 0
        let label = age > 1 ? "ans" :  "an"
        
        return "\(age) \(label)"
    }
    
    var isToday: Bool {
        let calendar = Calendar.current
        
        return calendar.isDateInToday(self)
    }
}
