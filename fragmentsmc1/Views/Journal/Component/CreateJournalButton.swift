//
//  CreateJournalButton.swift
//  fragmentsmc1
//
//  Created by Patricia Ho on 03/09/23.
//

import SwiftUI

struct CreateJournalButton: View {
    var body: some View {
            VStack {
                Button {
                    //
                } label: {
                    VStack (spacing: 30) {
                        Image(systemName: "plus")
                            .font(.system(size: 56))
                        Text("Create New Journal")
                            .font(body24)
                    }
                }
//                .sheet(isPresented: $showSheet) {
//                    ModalPickJournalView(showSheet: $showSheet, selectedJournalIndex: $selectedJournalIndex)
//                }
            }
            .padding(50)
            .frame(maxWidth: .infinity)
            .background(Color.Neutral.s10)
            .cornerRadius(10)
        
    }
}

struct CreateJournalButton_Previews: PreviewProvider {
    static var previews: some View {
        CreateJournalButton()
    }
}
