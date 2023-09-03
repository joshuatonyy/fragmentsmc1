//
//  AnswerPlaceholder.swift
//  fragmentsmc1
//
//  Created by Joshua on 29/08/23.
//

import SwiftUI

struct AnswerPlaceholder: View {
    var huruf : String
    var answer : String
    var isPicked: Bool
    var onSelect: () -> Void
    var body: some View {
        Button(action: {
            onSelect()
        }) {
            HStack{
                Text(huruf)
                    .font(caption2)
                    .foregroundColor(Color.Neutral.s70)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 4)
                    .background(isPicked ? Color.Accent.light : Color.Neutral.s40)

                Text(answer)
                    .font(.system(size: 32))
                    .foregroundColor(Color.black)
                    .padding()
            }
            .padding(8)
        }
        .border(isPicked == false ? .black.opacity(0) : .black)
    }
}

//struct AnswerPlaceholder_Previews: PreviewProvider {
//    static var previews: some View {
//        AnswerPlaceholder()
//    }
//}
