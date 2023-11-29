//
//  SelfAssessmentQuiz.swift
//  fragmentsmc1
//
//  Created by Joshua on 03/09/23.
//

import SwiftUI

struct SelfAssessmentQuiz: View {
    @StateObject private var assessmentViewModels = AssessmentViewModels()
    
    var body: some View {
        VStack{
            Text("1/8")
                .font(.system(size: 32))
                .kerning(0.0224)
                .multilineTextAlignment(.trailing)
                .foregroundColor(Color(red: 0.31, green: 0.28, blue: 0.27))
                .frame(maxWidth: .infinity, alignment: .topTrailing)
            Spacer()
            VStack(alignment: .leading, spacing: 72){
                QuestionPlaceholder()
                AnswersList(assessmentViewModels: assessmentViewModels)
            }
            Spacer()
            HStack {
                Spacer()
                NavigationLink{
                    
                } label: {
                    FloatingNextButton()
                }
            }
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.vertical, 73)
            .padding(.horizontal, 40.5)
    }
}

struct SelfAssessmentQuiz_Previews: PreviewProvider {
    static var previews: some View {
        SelfAssessmentQuiz()
    }
}
