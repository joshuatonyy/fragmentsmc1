//
//  DrawingView.swift
//  fragmentsmc1
//
//  Created by Joshua on 03/09/23.
//

import SwiftUI
import CoreData

struct DrawingView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(entity: Drawing.entity(), sortDescriptors: []) var drawings: FetchedResults<Drawing>
    
    @State private var showSheet = false
    
    var body: some View {
        NavigationView{
            VStack {
                List {
                    ForEach(drawings) { drawing in
                        Text(drawing.title ?? "Untitled")
                            .foregroundColor(Color.black)
                    }
                    
                    Button(action: {
                        self.showSheet.toggle()
                    }, label: {
                        HStack{
                            Image(systemName: "plus")
                            Text("Add Canvas")
                                .foregroundColor(Color.black)
                        }
                    })
                    .sheet(isPresented: $showSheet, content: {
                        AddNewCanvasView().environment(\.managedObjectContext, viewContext)
                    })
                }
                .navigationTitle(Text("Drawing"))
                .toolbar {
                    EditButton()
                }
            }
            
            VStack{
                Image(systemName: "scribble.variable")
                    .font(.largeTitle)
                Text("No canvas has been selected")
                    .font(.title)
            }
        }
        .navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
}

struct DrawingView_Previews: PreviewProvider {
    static var previews: some View {
        DrawingView()
    }
}
