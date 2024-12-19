//
//  ContentView.swift
//  Hackathon
//
//  Created by Anastasia Harmon on 12/19/24.
//

import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
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
