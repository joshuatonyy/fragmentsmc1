//
//  SelfAssessment2.swift
//  fragmentsmc1
//
//  Created by Joshua on 29/08/23.
//

import SwiftUI

struct SelfAssessment2: View {
    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                HStack(alignment: .center, spacing: 32){
                    VStack(spacing: 16){
                        Text("Help us personalize your journal")
                            .font(.system(size: 58))
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                        Text("Suatu copywriting yang menunjukkan ini buat orang broken home")
                            .font(.system(size: 24))
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                    }
                    
                    Image("SelfAssessmentPict1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 360, height: 760)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 2)
                        .offset(x: 60)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 30)
                .padding(.vertical, 0)
                
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink{
                        SelfAssessment1()
                    } label: {
                        FloatingNextButton()
                    }
                }
                .padding(.horizontal, 40)
                .padding(.bottom, 72)
            }
        }
    }
}

struct SelfAssessment2_Previews: PreviewProvider {
    static var previews: some View {
        SelfAssessment2()
    }
}
