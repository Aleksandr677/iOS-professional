//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Александр Христиченко on 09.05.2022.
//

import UIKit

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
    
}
