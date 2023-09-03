//
//  ModalCustomJournal.swift
//  fragmentsmc1
//
//  Created by Patricia Ho on 03/09/23.
//

import SwiftUI

struct ModalCustomJournal: View {
    @State var journalName = ""
    @Binding var showSheet: Bool
    
    func close() {
        showSheet = false
    }
    
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
                
                HStack {
                    RoundedRectangle(cornerRadius: 0)
                        .foregroundColor(Color.Semantic.info)
                        .frame(width: 20, height: 350)
                        .cornerRadius(20, corners: [.topLeft, .bottomLeft])
                    VStack{
                        HStack {
                            Text("\(journalName)")
                                .font(body32)
                                .foregroundColor(Color.Primary.s60)
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }
                        Spacer()
                    }
                    .frame(width: 250, height: 300)
                    .padding(30)
                    .background(
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color.Neutral.s10)
                                .frame(width: 400, height: 350)
                            Image("Lines")
            
                        }
                    )
                    .clipped()
                }
                
                Spacer()
                
                VStack (spacing: 10){
                    HStack {
                        Spacer()
                        TextField(
                          "Enter your journal name",
                          text: $journalName,
                          onEditingChanged: { changed in
                            //code here
                          }
                        )
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .padding([.top, .bottom], 5)
                        .multilineTextAlignment(.center)
                        .font(ax5body)
                        Spacer()
                    }
                    Divider()
                        .frame(width: geo.size.width * 0.8, height: 1)
                        .background(Color.Neutral.s20)
                }
                
                Spacer()
                
                ButtonComponent(action: {
                    
                }, buttonLabel: "Create", width: geo.size.width * 0.75)
                Spacer()
            }
            .padding(20)
        }
    }
}

struct ModalCustomJournal_Previews: PreviewProvider {
    static var previews: some View {
        ModalCustomJournal(showSheet: .constant(true))
    }
}
