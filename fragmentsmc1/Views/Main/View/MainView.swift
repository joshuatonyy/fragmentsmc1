//
//  MainView.swift
//  fragmentsmc1
//
//  Created by Patricia Ho on 03/09/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        NavigationSplitView {
            GeometryReader { geometry in
                ZStack{
                    List {
                        MenuView(image: Image(systemName: "book.closed"), label: "Journals", destination: HistoryView(), imageSize: 32)
                        MenuView(image: Image(systemName: "books.vertical"), label: "History", destination: HistoryView() ,imageSize: 24)
                        MenuView(image: Image(systemName: "list.clipboard"), label: "Result", destination: ResultView(dateNow: Date.now), imageSize: 32)
                    }
                    .foregroundColor(Color.Primary.s50)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .padding(.top, (geometry.size.height - (4 * 100)) / 2)
                    .listStyle(SidebarListStyle())
                    .scrollDisabled(true)
                    .background(Color.Neutral.s20)
                    
                    Image("cloverSidebar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 150)
                        .padding(.top, (geometry.size.height / 2))
                }
            }
        } detail: {
            VStack {
                HistoryView()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
