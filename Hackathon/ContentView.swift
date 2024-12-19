//
//  ContentView.swift
//  Hackathon
//
//  Created by Anastasia Harmon on 12/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Image("horse")
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 100, height: 100)
                    .padding()
                Text("InstaGreek")
                    .font(.largeTitle)
                    .bold()
                
            }
            Text("Home")
                .font(.title2)
            
            ScrollView{
                
            }
        }
        Spacer()
    }
}

#Preview {
    ContentView()
}
