//
//  AssessmentAnswerRepository.swift
//  MiniChallenge1
//
//  Created by Joshua on 06/05/23.
//

import Foundation
import SwiftUI

class AssessmentAnswerRepository {
    var assessmentAnswer: [AssessmentAnswer] = []
    
    init(){
        let SAA1 = AssessmentAnswer(no: 1, letter: "A", answer: "Never", score: 1, category: .never)
        let SAA2 = AssessmentAnswer(no: 2, letter: "B", answer: "Rarely", score: 2, category: .rarely)
        let SAA3 = AssessmentAnswer(no: 3, letter: "C", answer: "Sometimes", score: 3, category: .sometimes)
        let SAA4 = AssessmentAnswer(no: 4, letter: "D", answer: "Often", score: 4, category: .often)
        
        assessmentAnswer.append(SAA1)
        assessmentAnswer.append(SAA2)
        assessmentAnswer.append(SAA3)
        assessmentAnswer.append(SAA4)
    }
    
    func getAnswer(index: Int) ->  AssessmentAnswer {
        return assessmentAnswer[index]
    }
}
