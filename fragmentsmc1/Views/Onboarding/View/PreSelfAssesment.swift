//
//  PreSelfAssesment.swift
//  MiniChallenge1
//
//  Created by Afaqih Deaz Tratama on 02/05/23.
//

import SwiftUI

struct PreSelfAssesment: View {
    @EnvironmentObject var userDefaultForUser: UserDefaultForUser
    
    @State private var fromProfileView = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Spacer()
                VStack {
                    HStack {
                        VStack (alignment: .leading) {
                            Text("Self Assessment")
                                .font(title1)
                                .fontWeight(.medium)
                                .padding(.bottom, 16)
                                .foregroundColor(Color.Primary.s50)
                            HStack (alignment: .top) {
                                Text("You will be guided through a series of questions, to determine which journal you should finish first")
                                        .font(body24)
                                        .fontWeight(.medium)
                                        .padding(.bottom, 16)
                                        .foregroundColor(Color.Primary.s50)
                                    .frame(width: 400)
                                ZStack (alignment: .trailing){
                                    Image("ArrowDown-Ornament")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    .frame(width: 193, height: 200)
                                }
                                Spacer()
                            }
                        }
                        .padding([.trailing, .leading], 40)
                        .frame(maxWidth: .infinity)
                        Spacer()
                    }
                    
                    VStack {
                        HStack(alignment: .top){
                            Image("PreSelfAssessment-Illustration")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .frame(maxWidth: .infinity)
                    }
                    
                    VStack {
                        Spacer()
                            .frame(height: 24)
                        HStack {
                            Spacer()
                            CircleButtonNext(destination: AssesmentView(fromProfileView: $fromProfileView))
                            .padding([.trailing, .leading], 40)
                        }
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
            .padding([.top, .bottom], 40)
            .background(Color.Neutral.s10)
        }
    }
}

struct PreSelfAssesment_Previews: PreviewProvider {
    static var previews: some View {
        let userDefaultForUser = UserDefaultForUser()
        PreSelfAssesment()
    }
}
