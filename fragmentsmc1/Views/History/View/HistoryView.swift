//
//  HistoryView.swift
//  fragmentsmc1
//
//  Created by Patricia Ho on 29/08/23.
//

import SwiftUI

struct HistoryView: View {
    @State private var unhealthFoods = Journal.unhealthyExamples()
    
    var body: some View {
        VStack {
            List {
               ForEach(unhealthFoods) { journal1 in
                   JournalRow(journal: journal1)
               }
              
               .listRowSeparator(.hidden)
               .listRowInsets(.init(top: 0,         leading: 0,    bottom: 2,      trailing: 0))
               
               .listRowBackground(
                   RoundedRectangle(cornerRadius: 10)
                    .background(Color.Neutral.s20)
                    .foregroundColor(Color.Neutral.s10)
                       .padding(
                           EdgeInsets(
                               top: 5,
                               leading: 10,
                               bottom: 5,
                               trailing: 10
                           )
                       )
               )
               
           }
           .listSectionSeparator(.hidden)
           .environment(\.defaultMinListRowHeight, 150)
           .listStyle(.plain)

        }
        .padding([.leading, .trailing], 20)
        .background(Color.Neutral.s30)
        
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
