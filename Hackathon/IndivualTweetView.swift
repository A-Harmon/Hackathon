//
//  IndivualTweetView.swift
//  Hackathon
//
//

import SwiftUI

struct IndivualTweetView: View {
    @State var user: User
    @State var tweet: String
    var body: some View {
        VStack {
            HStack {
                Image(user.profilePicture)
                    .resizable()
                    .frame(maxWidth:50,maxHeight: 50)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text(user.displayName).bold().font(.title2)
                    Text("@\(user.username)")
                }
                Spacer()
            }
            Divider().hidden()
            Text("\t\(tweet)")
                .multilineTextAlignment(.leading)
        }
        .padding(.horizontal, 10)
    }
}

#Preview {
    IndivualTweetView(user: users.first!,tweet: users.first!.tweets.randomElement()!)
}
