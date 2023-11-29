//
//  AssessmentQuestion.swift
//  MiniChallenge1
//
//  Created by Joshua on 05/05/23.
//

import Foundation

var assessmentCategoryForQuestion = AssessmentCategory.allCases

struct AssessmentQuestion {
    var no: Int
    var questions: String
    var category: AssessmentCategory
}
