//
//  FloatingNextButton.swift
//  fragmentsmc1
//
//  Created by Joshua on 29/08/23.
//

import SwiftUI

struct FloatingNextButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(maxWidth: 100, maxHeight: 100)
                .foregroundColor(Color.black)
            Image(systemName: "chevron.right")
                .foregroundColor(Color.white)
                .font(.system(size: 36))
        }.frame(width: 100, height: 100)
    }
}

struct FloatingNextButton_Previews: PreviewProvider {
    static var previews: some View {
        FloatingNextButton()
    }
}
