//
//  AsssessmentModel.swift
//  MiniChallenge1
//
//  Created by Joshua on 05/05/23.
//

import Foundation

enum AssessmentAnswerCategory {
    case never
    case rarely
    case sometimes
    case often
}

struct AssessmentAnswer {
    var no: Int
    var letter: String
    var answer: String
    var score: Int
    var category: AssessmentAnswerCategory
}


