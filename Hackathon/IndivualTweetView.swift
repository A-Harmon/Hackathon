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
                Image("Odysseus")
                    .resizable()
                    .frame(maxWidth:50,maxHeight: 50)
                    .clipShape(Circle())
                Text(user.displayName).bold().font(.title2)
                Spacer()
            }
            Divider()
            Text(tweet)
        }
    }
}

#Preview {
    IndivualTweetView(user: users.first!,tweet: users.first!.tweets.randomElement()!)
}
