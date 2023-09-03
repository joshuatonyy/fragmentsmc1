//
//  ButtonComponent.swift
//  fragmentsmc1
//
//  Created by Patricia Ho on 03/09/23.
//

import SwiftUI

struct ButtonComponent: View {
    var action: () -> Void
    var buttonLabel: String
    var width: CGFloat?

    init(action: @escaping () -> Void, buttonLabel: String, width: CGFloat? = nil) { 
        self.action = action
        self.buttonLabel = buttonLabel
        self.width = width
    }
    
    var body: some View {
        Button {
            self.action()
        } label: {
            Text("\(buttonLabel)")
                .font(bodyBold)
        }
        .padding()
        .frame(width: width)
        .background(Color.Primary.s60)
        .foregroundColor(Color.Neutral.s10)
        .cornerRadius(10)
    }
}

struct ButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        ButtonComponent(action: {print("Button tapped")}, buttonLabel: "Tap me!")
    }
}
