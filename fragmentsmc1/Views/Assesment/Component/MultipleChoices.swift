//
//  MultipleChoices.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 03/05/23.
//

import SwiftUI

struct MultipleChoices: View {
    
    @ObservedObject var assessmentViewModels: AssessmentViewModels
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            ForEach(0...3, id: \.self) { i in
                MultipleChoice(letter: assessmentViewModels.assessmentMultipleChoices.getAnswer(index: i).letter,
                   textMultipleChoice: assessmentViewModels.assessmentMultipleChoices.getAnswer(index: i).answer,
                               isSelected: assessmentViewModels.selectedIndex == i,
                   onSelect: {
                    assessmentViewModels.selectedIndex = i
                    assessmentViewModels.selectedAnswer = assessmentViewModels.assessmentMultipleChoices.getAnswer(index: i).answer
                    assessmentViewModels.scorePlaceholder = assessmentViewModels.assessmentMultipleChoices.getAnswer(index: i).score
                })
            }
        }
    }
}

struct MultipleChoices_Previews: PreviewProvider {
    
    static var previews: some View {
        MultipleChoices(assessmentViewModels: AssessmentViewModels())
    }
}
