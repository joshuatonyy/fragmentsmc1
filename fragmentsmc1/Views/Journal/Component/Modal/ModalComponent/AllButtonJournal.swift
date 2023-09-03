//
//  AllButtonJournal.swift
//  fragmentsmc1
//
//  Created by Patricia Ho on 03/09/23.
//

import SwiftUI

struct AllButtonJournal: View {
    @State var journalTitle: [String] = ["Custom Journal", "Self-Aware", "Peace hehe", "Naww"]
    @State var lastEdited = Date.now
    @State var selectedIndex: Int = -1
    
    @Binding var selectedJournal: SelectedJournal? // Add a binding to SelectedJournal

    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 30) {
            ForEach(0..<4) { index in
                ButtonJournal(
                    journalNameTitle: $journalTitle[index],
                    lastEdited: $lastEdited,
                    journalColor: $journalTitle[index].wrappedValue == "Custom Journal" ? Color.Semantic.info : Color.Semantic.success,
                    heightJournal: 280,
                    isSelected: selectedIndex == index,
                    onSelect: {
                        selectedIndex = index
                        if selectedIndex == 0 {
                            selectedJournal = .customJournal
                        } else {
                            selectedJournal = .otherJournal
                        }
                    }
                )
                .padding(index % 2 == 0 ? .trailing : .leading, 10 )
            }
        }
    }
}

struct AllButtonJournal_Previews: PreviewProvider {
    static var previews: some View {
        AllButtonJournal(selectedJournal: .constant(nil))
    }
}
