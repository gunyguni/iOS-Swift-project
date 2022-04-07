//
//  InfoView.swift
//  GunyCard
//
//  Created by Keon Hee Park on 2022/04/02.
//

import SwiftUI


struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50.0)
            .foregroundColor(Color.white)
            .overlay(HStack {
                Image(systemName: imageName).foregroundColor(Color.green)
                Text(text)
            })
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone").previewLayout(.sizeThatFits)
    }
}
