//
//  UserDefaultForUser.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 04/05/23.
//

import Foundation
import SwiftUI

class UserDefaultForUser: ObservableObject {
    @Published var isCompletedAssessment: Bool = UserDefaults.standard.bool(forKey: "isCompletedAssessment")
}
