//
//  ModalAddNewJournal.swift
//  fragmentsmc1
//
//  Created by Patricia Ho on 03/09/23.
//

import SwiftUI

enum SelectedJournal {
    case customJournal
    case otherJournal
}

struct ModalAddNewJournal: View {
    @Binding var showSheet: Bool
    @Binding var showSheetCurrent: Bool
    @State private var selectedJournal: SelectedJournal?
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                HStack {
                    Button("Cancel") {
                        showSheet = false
                    }
                    .padding()
                    Spacer()
                }
                
                Spacer()
                
                AllButtonJournal(selectedJournal: $selectedJournal)

                Spacer()
                
                HStack {
                    ButtonComponent(action: {
                        if let selectedJournal = selectedJournal {
                            switch selectedJournal {
                            case .customJournal:
                                showSheetCurrent = true
                                break
                            case .otherJournal:
                                // Show the modal for other journals here
                                break
                            }
                        }
                    }, buttonLabel: "Create New Journal", width: geo.size.width * 0.9)
                    .sheet(isPresented: $showSheetCurrent) {
                        ModalCustomJournal(showSheet: $showSheetCurrent)
                    }
                }
                Spacer()
            }
            .padding(20)
        }
    }
}

struct ModalAddNewJournal_Previews: PreviewProvider {
    static var previews: some View {
        ModalAddNewJournal(showSheet: .constant(true), showSheetCurrent: .constant(false))
    }
}
