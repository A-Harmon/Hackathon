//
//  ContentView.swift
//  Hackathon
//
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State var tweets: [User] = []
    var body: some View {
        NavigationStack {
            VStack {
                HStack{
                    Text("InstaGreek")
                        .font(.largeTitle)
                        .bold()
                    
                }
                Text("Home")
                    .font(.title2)
                
                ScrollView{
                    ForEach(tweets.shuffled(),id:\.self) {usr in
                        NavigationLink(destination: ProfileView(user: usr), label: {
                            IndivualTweetView(user: usr, tweet: usr.tweets[Int.random(in: 0...usr.tweets.count-1)])
                        })
                        .foregroundStyle(.black)
                        Divider()
                    }
                }
                .refreshable {
                    tweets.removeAll()
                    GetTweets()
                }
            }
            .onAppear {
                GetTweets()
            }
        }
    }
    func GetTweets() {
        for _ in 10...Int.random(in: 10...30) {
            let usr = users.randomElement()!
            tweets.append(usr)
        }
        print(tweets)
    }
}
#Preview {
    ContentView()
}
