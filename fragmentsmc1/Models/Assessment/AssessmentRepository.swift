//
//  AssessmentRepository.swift
//  MiniChallenge1
//
//  Created by Joshua on 05/05/23.
//

import Foundation

struct selfAssessmentResultRepository {
    var savedAssessmentResultIndex: [AssessmentResult] = []
    
    mutating func add(_ assessmentResult: AssessmentResult){
        savedAssessmentResultIndex.insert(assessmentResult, at: 0)
    }
}
