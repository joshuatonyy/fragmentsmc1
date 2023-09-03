//
//  JournalRow.swift
//  fragmentsmc1
//
//  Created by Patricia Ho on 30/08/23.
//

import SwiftUI

struct JournalRow: View {
    let journal: Journal
    
    var body: some View {
        VStack (alignment: .leading, spacing: 5) {
            Text(journal.name)
                .font(journalTitle)
                .foregroundColor(Color.Primary.s60)
            Text("Last Edited: \(journal.journalDate)")
                .foregroundColor(Color.Primary.s30)
           
        }
        .padding([.leading, .trailing, .top], 32)
        .padding(.bottom, 50)
        .swipeActions(edge: .trailing, allowsFullSwipe: true) {
            VStack{
                Button (role: .destructive) {
                    print("Edit button was tapped")
                } label: {
                    VStack{
                        Image(systemName: "minus.circle.fill")
                            .foregroundColor(.red)
                            .padding(5)
                            .background(Color.Primary.s50)

                    }
                    
                }
                .tint(Color.Semantic.danger)
                
            }
            .padding(10)
            
            
            
        }
    }
}

struct JournalRow_Previews: PreviewProvider {
    static var previews: some View {
        JournalRow(journal: Journal(name: "Pizza", journalDate: Date.now))
    }
}
