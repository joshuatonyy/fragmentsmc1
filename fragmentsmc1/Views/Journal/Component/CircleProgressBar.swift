//
//  CircleProgressBar.swift
//  fragmentsmc1
//
//  Created by Patricia Ho on 03/09/23.
//

import SwiftUI

struct CircleProgressBar: View {
    @Binding var progressBar: Double
    var journalColor: Color
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    Color.Neutral.s50,
                    lineWidth: 15
                )
            Circle()
                .trim(from: 0, to: progressBar)
                .stroke(
                    journalColor,
                    style: StrokeStyle(
                        lineWidth: 15,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))
        }
        .frame(width: 100)
    }
}

struct CircleProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        CircleProgressBar(progressBar: .constant(0.5), journalColor: Color.Primary.s60)
    }
}
