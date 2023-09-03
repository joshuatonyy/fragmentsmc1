//
//  Journal Component.swift
//  fragmentsmc1
//
//  Created by Patricia Ho on 03/09/23.
//

import SwiftUI

struct JournalComponent<Destination>: View where Destination: View {
    @Binding var journalNameTitle: String
    @Binding var lastEdited: Date
    
    @Binding var progressBarSize: Double
    @Binding var progress: Double
    
    var destinationProvider: () -> Destination
    var journalColor: Color
    var chosenJournal: String = ""
    var heightJournal: CGFloat
    
    var body: some View {
        NavigationLink (
            destination: destinationProvider
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
                    
                    HStack {
                        Spacer()
                        ZStack {
                            CircleProgressBar(progressBar: $progress, journalColor: journalColor)
                                .frame(width: progressBarSize, height: progressBarSize)
                            Text("\(progress * 100, specifier: "%.0f")%")
                                .font(bodyBold)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.Primary.s60)
                        }
                    }
                    .padding([.trailing, .bottom], 25)
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
    }
}

struct JournalComponent_Previews: PreviewProvider {
    static var previews: some View {
        JournalComponent(
            journalNameTitle: .constant("Haiii"),
            lastEdited: .constant(Date()), // You can use Date() to represent the current date and time
            progressBarSize: .constant(100),
            progress: .constant(0.5),
            destinationProvider: { // Define the destinationProvider closure here
                HistoryView() // Return the desired destination view
            },
            journalColor: Color.Semantic.success, heightJournal: 280
        )
    }
}

