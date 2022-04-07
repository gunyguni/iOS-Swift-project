//
//  ContentView.swift
//  GunyCard
//
//  Created by Keon Hee Park on 2022/04/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52).edgesIgnoringSafeArea(.all)
            VStack {
                Image("MyPic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200.0, height: 200.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                    
                Text("John Park")
                    .font(Font.custom("Pacifico-regular", size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    
                Text("Mobile Developer")
                    .foregroundColor(Color.white)
                    .font(.system(size: 25))
                Divider().padding()
                
                InfoView(text: "010 2645 8460", imageName: "phone.fill")
                InfoView(text: "manpkh95@gmail.com", imageName: "envelope")
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}

