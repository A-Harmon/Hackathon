//
//  ProfileView.swift
//  Hackathon
//
//

import SwiftUI

struct ProfileView: View {
    
    @State var user : User = User(displayName: "Test", username: "Test", profilePicture: "Zeus", tweets: users[0].tweets)
    @State var followers : Int = 500
    
    @State var followed : Bool = false
    
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
    
//    @State var likeStatus : Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Image(user.profilePicture)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .padding(.leading, 20)
                VStack {
                    Text(user.displayName)
                        .font(.largeTitle)
                        .bold()
                        .padding(.horizontal)
                    Text("@\(user.username)")
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
                if (followed) {
                    Button(action: {
                        followed.toggle()
                    }, label: {
                        Text("Follow")
                            .frame(maxWidth: .infinity, maxHeight: 50)
                            .foregroundStyle(Color.white)
                            .font(.headline)
                            .background(
                                RoundedRectangle(cornerRadius: 50, style: .circular)
                                    .padding(.horizontal, 10)
                            )
                    })
                } else {
                    Button(action: {
                        followed.toggle()
                    }, label: {
                        Text("Follow")
                            .frame(maxWidth: .infinity, maxHeight: 50)
                            .foregroundStyle(Color.accentColor)
                            .font(.headline)
                            .background(
                                RoundedRectangle(cornerRadius: 50, style: .circular)
                                    .strokeBorder(lineWidth: 2)
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
                ForEach(user.tweets, id: \.self) { tweet in
                    IndivualTweetView(user: user, tweet: tweet)
                        .padding(.bottom, 20)
                    Divider()
                }
            }
        }
    }
    
    
    
}

#Preview {
    ProfileView()
}
