//
//  ContentView.swift
//  Hackathon
//
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State var tweets: [User] = []
    @State var loadTweets = false
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
                    if loadTweets {
                        ForEach(tweets.shuffled(),id:\.self) {usr in
                            NavigationLink(destination: ProfileView(user: usr), label: {
                                IndivualTweetView(user: usr, tweet: usr.tweets[Int.random(in: 0...usr.tweets.count-1)])
                            })
                            .foregroundStyle(.black)
                            Divider()
                        }
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
        loadTweets = false
        for x in 10...Int.random(in: 20...40) {
            let usr = users[Int.random(in: 0...users.count-1)]
            tweets.append(usr)
        }
        loadTweets = true
    }
}
#Preview {
    ContentView()
}
