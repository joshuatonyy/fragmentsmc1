//
//  fragmentsmc1App.swift
//  fragmentsmc1
//
//  Created by Joshua on 29/08/23.
//

import SwiftUI

@main
struct fragmentsmc1App: App {
    @StateObject var dataController = DataController.shared
    @Environment(\.managedObjectContext) var viewContext
    let isOpened = UserDefaultForUser().isCompletedAssessment
    let userDefaultForUser = UserDefaultForUser()
//    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
//            if isOpened {
//                ContentView()
//                    .environment(\.managedObjectContext, dataController.container.viewContext)
//                    .environmentObject(userDefaultForUser)
//            } else {
//                SplashScreen()
//                    .environment(\.managedObjectContext, dataController.container.viewContext)
//                    .environmentObject(userDefaultForUser)
//            }
            DrawingView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
