//
//  AssessmentResult.swift
//  MiniChallenge1
//
//  Created by Joshua on 05/05/23.
//

import Foundation

struct AssessmentResult: Identifiable, Hashable{
    let id = UUID()
    var scoreA: Int
    var scoreB: Int
    var scoreC: Int
    var createdAt: Date
}
