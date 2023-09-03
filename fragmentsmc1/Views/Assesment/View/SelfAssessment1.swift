//
//  SelfAssessment1.swift
//  fragmentsmc1
//
//  Created by Joshua on 29/08/23.
//

import SwiftUI

struct SelfAssessment1: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                VStack {
                    HStack {
                        VStack(alignment: .leading, spacing: 16){
                            Text("Self Assessment")
                                .font(.system(size: 58))
                                .foregroundColor(Color.Primary.s50)
                            Text("You will be guided through a series of questions, to determine which journal you should finish first")
                                .font(.system(size: 24))
                                .foregroundColor(Color.Primary.s40)
                                .multilineTextAlignment(.leading)
                                .frame(width: 410)
                                .padding(.leading, -7)
                            
                        }
                        Spacer()
                    }.padding(.horizontal, 40)
                    
                    HStack{
                        Image("SelfAssessmentPict2")
                    }
                }
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink{
                        
                    } label: {
                        FloatingNextButton()
                    }
                }
                .padding(.horizontal, 40)
                .padding(.bottom, 72)
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct SelfAssessment1_Previews: PreviewProvider {
    static var previews: some View {
        SelfAssessment1()
    }
}
