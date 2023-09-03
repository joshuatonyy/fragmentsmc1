//
//  ButtonJournal.swift
//  fragmentsmc1
//
//  Created by Patricia Ho on 03/09/23.
//

import SwiftUI

struct ButtonJournal: View {
    @Binding var journalNameTitle: String
    @Binding var lastEdited: Date
    
    var journalColor: Color
    var chosenJournal: String = ""
    var heightJournal: CGFloat
    
    var isSelected: Bool
    var onSelect: () -> Void
    
    var body: some View {
        Button (
            action: {
                onSelect()
            }
        )
        {
            HStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(journalColor)
                    .frame(width: 25, height: heightJournal + 70)
                    .cornerRadius(20, corners: [.topLeft, .bottomLeft])
                VStack {
                    VStack (spacing: 10) {
                        HStack {
                            Text("\(journalNameTitle)")
                                .font(journalTitle)
                                .foregroundColor(Color.Primary.s60)
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }
                        HStack {
                            Text("Last Edited \(lastEdited)")
                                .font(caption24)
                                .foregroundColor(Color.Primary.s30)
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }
                    }
                    .padding([.leading, .top, .trailing], 25)
                    
                    Spacer()
                    
                }
               
                .frame(width: .infinity, height: heightJournal + 70)
                .background(
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color.Neutral.s10)
                            .frame(width: .infinity, height: heightJournal + 70)
                        Image("Lines")
                    }
                )
                .clipped()
                
                
            }
            
                
                
        }
        .padding(20)
        .cornerRadius(10)
        
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(isSelected ? Color.Neutral.s100 : Color.clear, lineWidth: 2)
                .background(Color.Primary.s100.opacity(0))
        )
        .background(Color.Primary.s100.opacity(0))
        .opacity(isSelected ? 1 : 0.5)
        
    }
}

struct ButtonJournal_Previews: PreviewProvider {
    static var previews: some View {
        ButtonJournal(journalNameTitle: .constant("Test"), lastEdited: .constant(Date.now), journalColor: Color.Primary.s10, heightJournal: 300, isSelected: false, onSelect: {})
    }
}
