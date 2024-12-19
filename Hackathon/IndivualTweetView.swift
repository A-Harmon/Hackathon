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
                VStack(alignment: .leading) {
                    Text(user.displayName).bold().font(.title2)
                    Text("@\(user.username)")
                }
                Spacer()
            }
            Divider().hidden()
            Text(tweet)
        }
        .padding(EdgeInsets(top: 0.0, leading: 5.0, bottom: 0, trailing: 5.0))
    }
}

#Preview {
    IndivualTweetView(user: users.first!,tweet: users.first!.tweets.randomElement()!)
}
