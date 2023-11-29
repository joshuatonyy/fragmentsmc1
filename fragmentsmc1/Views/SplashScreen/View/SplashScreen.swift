//
//  SplashScreen.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 27/04/23.
//

import SwiftUI

struct SplashScreen: View {
    @EnvironmentObject var userDefaultForUser: UserDefaultForUser
    @State private var isVisible = false
    @State var currentIndex = 0
    
    var imagePaths: Array = ["CloverPath1", "CloverPath2", "CloverPath3", "CloverPath4", "CloverPath5"]
    
    var body: some View {
        if isVisible {
            OnboardingView()
        } else {
            VStack (spacing: 50) {
                ZStack {
                    ForEach(0..<5) { index in
                        Image("\(imagePaths[index])")
                            .opacity(currentIndex == index ? 1 : 0)
                            .animation(
                                Animation.linear(duration: 1)
                            )
                    }
                }
                .onAppear {
                    let timer = Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { timer in
                        withAnimation {
                            currentIndex += 1
                            if currentIndex > imagePaths.count-2 {
                                timer.invalidate()
                            }
                        }
                    }
                    timer.fire()
                }
                Image("Fragments")
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    withAnimation(.easeInOut(duration: 1)){
                        isVisible = true
                    }
                }
                
            }
        }

        
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        let userDefaultForUser = UserDefaultForUser()
        SplashScreen()
    }
}
