//
//  File.swift
//  
//
//  Created by Konstantin Kalivod on 21.10.2020.
//

import Foundation

public extension Date {
    var tomorrow: Date {
        Calendar.current.date(byAdding: .day, value: 1, to: self) ?? self
    }
    
    var startOfDay: Date {
        Calendar.current.startOfDay(for: self)
    }
    
    func dateByAdding(days: Int) -> Date {
        Calendar.current.date(byAdding: .day, value: 7, to: self) ?? self
    }
    
    var yesterday: Date {
        Calendar.current.date(byAdding: .day, value: -1, to: self) ?? self
    }
}
