//
//  JournalView.swift
//  fragmentsmc1
//
//  Created by Patricia Ho on 03/09/23.
//

import SwiftUI

struct JournalView: View {
    @State var journalNameTitle = "test"
    @State var lastEdited = Date.now
    @State var progressBarSize = 100.0
    @State var progress = 0.5
    @State var journalColor = Color.Semantic.success
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack (spacing: 30) {
                    JournalComponent(
                        journalNameTitle: $journalNameTitle,
                        lastEdited: $lastEdited,
                        progressBarSize: $progressBarSize,
                        progress: $progress,
                        destinationProvider: {
                            HistoryView()
                        },
                        journalColor: journalColor,
                        heightJournal: 280
                    )
                    
                    LazyVGrid(columns: columns, spacing: 30) {
                        ForEach(0..<10) { index in
                            JournalComponent(
                                journalNameTitle: $journalNameTitle,
                                lastEdited: $lastEdited,
                                progressBarSize: $progressBarSize,
                                progress: $progress,
                                destinationProvider: {
                                    HistoryView()
                                },
                                journalColor: journalColor,
                                heightJournal: 300
                            )
                            .padding(index % 2 == 0 ? .trailing : .leading, 10 )
                        }
                    }
                    CreateJournalButton()
                }
                
                
                
            }
            
            
        }
        .padding([.trailing, .leading], 15)
        .padding([.top, .bottom], 10)
        .background(Color.Neutral.s30)
    }
}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}
