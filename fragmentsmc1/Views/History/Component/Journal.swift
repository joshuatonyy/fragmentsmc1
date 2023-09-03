//
//  Journal.swift
//  fragmentsmc1
//
//  Created by Patricia Ho on 30/08/23.
//

import Foundation

struct Journal: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var journalDate: Date
    
    
    static func unhealthyExamples() -> [Journal] {
        [Journal(name: "Pizza", journalDate: Date.now),
         Journal(name: "Burger", journalDate: Date.now)]
    }
}
