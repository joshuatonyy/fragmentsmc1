//
//  AssessmentQuestionRepository.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 05/05/23.
//

import Foundation
import SwiftUI

class AssessmentQuestionRepository {
    var assessmentQuestions: [AssessmentQuestion] = []
    
    init() {
        let SAS1 = AssessmentQuestion(no: 1, questions: "Do you ever feel like life is getting the best of you?", category: .peace)
        let SAS2 = AssessmentQuestion(no: 2, questions: "Do you feel like you have control over your life right now?", category: .peace)
        let SAS3 = AssessmentQuestion(no: 3, questions: "Do past problems rarely creep into your thoughts and weigh you down?", category: .peace)
        let SAS4 = AssessmentQuestion(no: 4, questions: "Have you taken the time to identify your strengths and weaknesses?", category: .selfAwareness)
        let SAS5 = AssessmentQuestion(no: 5, questions: "Do you regularly reflect on your life and how to improve it?", category: .selfAwareness)
        let SAS6 = AssessmentQuestion(no: 6, questions: "Do you understand your emotions and how they impact your life?", category: .selfAwareness)
        let SAS7 = AssessmentQuestion(no: 7, questions: "Are you pursuing clear life goals that excite and motivate you?", category: .lifePurpose)
        let SAS8 = AssessmentQuestion(no: 8, questions: "Are you leading a fulfilling and meaningful life?", category: .lifePurpose)
        let SAS9 = AssessmentQuestion(no: 9, questions: "Do you often participate in activities that align with your values and beliefs, and bring you joy and purpose?", category: .lifePurpose)
            
        assessmentQuestions.append(SAS1)
        assessmentQuestions.append(SAS2)
        assessmentQuestions.append(SAS3)
        assessmentQuestions.append(SAS4)
        assessmentQuestions.append(SAS5)
        assessmentQuestions.append(SAS6)
        assessmentQuestions.append(SAS7)
        assessmentQuestions.append(SAS8)
        assessmentQuestions.append(SAS9)
    }
    
    func getQuestion(index: Int) -> AssessmentQuestion {
        return assessmentQuestions[index]
    }
    
}
