//
//  ResultComponent.swift
//  fragmentsmc1
//
//  Created by Patricia Ho on 03/09/23.
//

import SwiftUI

struct ResultComponent: View {
    var dateNow: Date
    var total: Int = 3
    var score1: Int = 1
    var score2: Int = 2
    var score3: Int = 0

    var body: some View {
        VStack {
            VStack (spacing: 20){
                HStack {
                    Text("Date")
                        .font(bodyBold)
                    Spacer()
                    Text(dateNow.addingTimeInterval(600), style: .date)
                }
                HStack {
                    Text("Result")
                        .font(bodyBold)
                    Spacer()
                }
                VStack {
                    HStack {
                        Text("Criteria 1")
                        Spacer()
                        Text("\(score1)/\(total)")
                    }
                    Divider()
                    HStack {
                        Text("Criteria 2")
                        Spacer()
                        Text("\(score2)/\(total)")
                    }
                    Divider()
                    HStack {
                        Text("Criteria 3")
                        Spacer()
                        Text("\(score3)/\(total)")
                    }
                }
                
            }
            .foregroundColor(Color.Primary.s60)
            .font(body24)
        }
        .padding(32)
        .background(Color.Neutral.s10)
        .cornerRadius(10)
    }
}

struct ResultComponent_Previews: PreviewProvider {
    static var previews: some View {
        ResultComponent(dateNow: Date.now)
    }
}
