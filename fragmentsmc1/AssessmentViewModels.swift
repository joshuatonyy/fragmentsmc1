//
//  AssessmentViewModels.swift
//  fragmentsmc1
//
//  Created by Joshua on 03/09/23.
//

import Foundation

class AssessmentViewModels: ObservableObject {
    
    var assessmentQuestionRepository = AssessmentQuestionRepository()
    @Published var assessmentMultipleChoices = AssessmentAnswerRepository()
    
    var totalSteps: Int {
        assessmentQuestionRepository.assessmentQuestions.count
    }
    
    
    func getQuestion() -> AssessmentQuestion {
        return assessmentQuestionRepository.getQuestion(index: step-1)
    }
    
    
    @Published var selectedAnswer = ""
    @Published var selectedIndex = -1
    @Published var step = 1
    @Published var scoreATemp = 0
    @Published var scoreBTemp = 0
    @Published var scoreCTemp = 0
    @Published var scorePlaceholder = 0
}
