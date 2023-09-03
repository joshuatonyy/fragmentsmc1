//
//  MenuView.swift
//  fragmentsmc1
//
//  Created by Patricia Ho on 03/09/23.
//

import SwiftUI

struct MenuView<Destination>: View where Destination: View {
    var image: Image
    var label: String
    var destination: Destination
    var imageSize: Int

    init(image: Image, label: String, destination: Destination, imageSize: Int) {
        self.image = image
        self.label = label
        self.destination = destination
        self.imageSize = imageSize
    }
    
    var body: some View {
        NavigationLink(destination: destination) {
            HStack (spacing: 20) {
                image
                    .font(.system(size: CGFloat(imageSize)))
                Text(label)
                    .font(.system(size: 20))
            }
            .padding([.leading], 20)
        }
        .padding([.top, .bottom], 10)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(image: Image(systemName: "book.closed"), label: "Journals", destination: Text("Journals View"), imageSize: 28)
    }
}
