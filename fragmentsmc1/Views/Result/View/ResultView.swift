//
//  ResultView.swift
//  fragmentsmc1
//
//  Created by Patricia Ho on 30/08/23.
//

import SwiftUI

struct ResultView: View {
    var dateNow: Date
    
    var body: some View {
        GeometryReader { geo in
            VStack (spacing: 16) {
                ResultComponent(dateNow: dateNow)
                ResultComponent(dateNow: dateNow)
                Spacer()
                ButtonComponent(action: {}, buttonLabel: "Retake Test", width: geo.size.width * 0.5)
                Spacer()
            }
        }
        .padding(30)
        .background(Color.Neutral.s30)
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(dateNow: Date.now)
    }
}
