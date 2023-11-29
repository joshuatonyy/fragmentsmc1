//
//  AnswersList.swift
//  fragmentsmc1
//
//  Created by Joshua on 03/09/23.
//

import SwiftUI

struct AnswersList: View {
    
    @ObservedObject var assessmentViewModels: AssessmentViewModels
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            ForEach(0...3, id: \.self) { i in
                AnswerPlaceholder(huruf: assessmentViewModels.assessmentMultipleChoices.getAnswer(index: i).letter,
                   answer: assessmentViewModels.assessmentMultipleChoices.getAnswer(index: i).answer,
                               isPicked: assessmentViewModels.selectedIndex == i,
                   onSelect: {
                    assessmentViewModels.selectedIndex = i
                    assessmentViewModels.selectedAnswer = assessmentViewModels.assessmentMultipleChoices.getAnswer(index: i).answer
                    assessmentViewModels.scorePlaceholder = assessmentViewModels.assessmentMultipleChoices.getAnswer(index: i).score
                })
            }
        }
    }
}

struct AnswersList_Previews: PreviewProvider {
    static var previews: some View {
        AnswersList(assessmentViewModels: AssessmentViewModels())
    }
}
