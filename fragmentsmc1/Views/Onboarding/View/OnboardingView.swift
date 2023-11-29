//
//  OnboardingView.swift
//  MiniChallenge1
//
//  Created by Afaqih Deaz Tratama on 27/04/23.
//

import SwiftUI

struct OnboardingView: View {
    @EnvironmentObject var userDefaultForUser: UserDefaultForUser
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                ZStack{
                    HStack {
                        VStack {
                            GeometryReader { geo in
                                HStack(alignment: .top){
                                    Image("Onboarding1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: geo.size.width * 0.75, height: geo.size.height )
                                        .alignmentGuide(.leading, computeValue: { _ in -geo.size.width * 1 }) // align to the leading edge
                                }
                                .frame(maxWidth: .infinity)
                                .offset(x: geo.size.width * 0.35)
                            }
                            
                        }
                    }
                    
                    HStack {
                        VStack(alignment: .leading){
                            Text("Help us Personalize your Journal")
                                .font(title1)
                                .fontWeight(.medium)
                                .padding(.bottom, 16)
                                .foregroundColor(Color.Primary.s50)
                            Text("We understand that past experiences can sometimes affect how people handle life's challenges, and that's why we're committed to providing the guidance and support needed by personalizing your journal.")
                                .font(body24)
                                .foregroundColor(Color.Primary.s40)
                        }
                        .frame(width: 315)
                        Spacer()
                    }
                    
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            CircleButtonNext(destination: PreSelfAssesment())
                        }
                    }
                }
                Spacer()
            }
            .padding([.leading, .trailing, .top, .bottom], 40)
            .background(Color.Neutral.s20)
        }
    }
}
    

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        let userDefaultForUser = UserDefaultForUser()
        OnboardingView()
    }
}

