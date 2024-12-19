//
//  ProfileView.swift
//  Hackathon
//
//

import SwiftUI

struct ProfileView: View {
    
    @State var userI : Int
    
    @State var counter : Int = 0
    @State var followed : Bool = false
    
    @StateObject var shared = Shared.shared
    
    @Environment(\.dismiss) var dismiss
    
    var followersAbr : String {
        var subFollowers = users[userI].followers
        
        if (users[userI].followed) {
            subFollowers = users[userI].followers + 1
        }
        
        switch (subFollowers) {
        case 1000000000..<1000000000000:
            return "\(subFollowers/1000000000)B"
        case 1000000..<1000000000:
            return "\(subFollowers/1000000)M"
        case 1000..<1000000:
            return "\(subFollowers/1000)K"
        default:
            return "\(subFollowers)"
        }

    }
    
//    @State var likeStatus : Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Image(users[userI].profilePicture)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .padding(.leading, 20)
                VStack {
                    Text(users[userI].displayName)
                        .font(.title)
                        .bold()
                        .padding(.horizontal)
                    Text("@\(users[userI].username)")
                        .italic()
                        .foregroundStyle(Color.gray)
                }
                Spacer()
                Text("\(followersAbr)")
                    .font(.largeTitle)
                    .bold()
                    .padding(.trailing, 20)
            }
            .padding(.top, 50)
            
            HStack {
                if (users[userI].followed || followed) {
                    Button(action: {
                        users[userI].Follow()
                        followed.toggle()
                    }, label: {
                        Text("Followed")
                            .frame(maxWidth: .infinity, maxHeight: 50)
                            .foregroundStyle(Color.white)
                            .font(.title3)
                            .bold()
                            .background(
                                RoundedRectangle(cornerRadius: 50, style: .circular)
                                    .foregroundStyle(Color.main)
                                    .padding(.horizontal, 10)
                            )
                    })
                } else {
                    Button(action: {
                        users[userI].Follow()
                        followed.toggle()
                    }, label: {
                        Text("Follow")
                            .frame(maxWidth: .infinity, maxHeight: 50)
                            .foregroundStyle(Color.main)
                            .font(.title3)
                            .bold()
                            .background(
                                RoundedRectangle(cornerRadius: 50, style: .circular)
                                    .strokeBorder(Color.main, lineWidth: 2)
                                    .padding(.horizontal, 10)
                            )
                    })
                }
                
//                Button {
//                    likeStatus.toggle()
//                } label: {
//                    Image(systemName: (likeStatus ? "heart.fill" : "heart"))
//                        .resizable()
//                        .frame(width: 30, height: 30)
//                        .foregroundStyle(Color.red)
//                        .padding(.horizontal, 10)
//                        .padding(.trailing, 10)
//                }
//                .animation(.easeIn, value: likeStatus)

            }
            .padding(.bottom)
            
            Divider()
            Spacer()
            ScrollView {
                if (users[userI].username == "odysseus") {
                    ForEach(odysseus.tweets.reversed(), id: \.self) { tweet in
                        IndivualTweetView(user: users[userI], tweet: tweet)
                    }
                } else {
                    ForEach(users[userI].tweets.reversed(), id: \.self) { tweet in
                        IndivualTweetView(user: users[userI], tweet: tweet)
                            .padding(.bottom, 20)
                        Divider()
                    }
                }
            }
        }
        .onChange(of: shared.reShowHome) {
            if shared.reShowHome {
                shared.reShowHome = false
                dismiss()
            }
        }
    }
    
    
    
}

//#Preview {
//    ProfileView(userI: /*users.first!*/)
//}
