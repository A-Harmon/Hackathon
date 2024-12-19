//
//  ProfileView.swift
//  Hackathon
//
//  Created by Benjamin Scotti on 12/19/24.
//

import SwiftUI

struct ProfileView: View {
    
    @State var pic : String = "Zeus"
    @State var name : String = "Zeus"
    @State var followers : Int = 500
    var followersAbr : String {
        switch (followers) {
        case 1000000000..<1000000000000:
            return "\(followers/1000000000)B"
        case 1000000..<1000000000:
            return "\(followers/1000000)M"
        case 1000..<1000000:
            return "\(followers/1000)K"
        default:
            return "\(followers)"
        }
        
    }
    
    var body: some View {
        VStack {
            HStack {
                Image(pic)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .padding(.leading, 20)
                Text(name)
                    .font(.largeTitle)
                    .bold()
                    .padding()
                Spacer()
                Text("\(followersAbr)")
                    .font(.largeTitle)
                    .bold()
                    .padding(.trailing, 20)
            }
            .padding(.top, 50)
            
            Spacer()
        }
    }
}

#Preview {
    ProfileView()
}
