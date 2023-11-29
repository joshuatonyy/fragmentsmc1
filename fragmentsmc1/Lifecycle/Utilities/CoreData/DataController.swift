//
//  DataController.swift
//  MiniChallenge1
//
//  Created by Joshua on 06/05/23.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Fragments")
    static let shared = DataController()
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data can't load: \(error.localizedDescription)")
            }
            
        }
    }
}
