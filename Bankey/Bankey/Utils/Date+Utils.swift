//
//  Date+Utils.swift
//  Bankey
//
//  Created by Александр Христиченко on 10.05.2022.
//

import Foundation

extension Date {
    static var bankeyDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone(abbreviation: "MDT")
        return formatter
    }
    
    var monthDayYearString: String {
        let dateFormatter = Date.bankeyDateFormatter
        dateFormatter.dateFormat = "d MMM, yyyy"
        return dateFormatter.string(from: self)
    }
}
