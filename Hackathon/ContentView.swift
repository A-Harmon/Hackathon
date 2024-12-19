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
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(Color.main)
                            .frame(width: .infinity, height: 85)
                            .padding(.horizontal)
                        Text("InstaGreek")
                            .font(Font.custom("Palatino", size: 50))
                            .bold()
                    
                    }
                }
                Text("Home")
                    .font(.title2)
                
                ScrollView{
                    if loadTweets {
                        ForEach(tweets.shuffled()) {usr in
                            NavigationLink(value: usr, label: {
                                IndivualTweetView(user: usr, tweet: usr.tweets[Int.random(in: 0...usr.tweets.count-1)])
                            })
                            .foregroundStyle(.black)
                            Divider()
                        }
                        .navigationDestination(for: User.self, destination: {user in
                            ProfileView(user: users[users.firstIndex(where: {$0.username == user.username})!])
                        })
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
            tweets.append(User(displayName: usr.displayName, username: usr.username, profilePicture: usr.profilePicture, followers: usr.followers, tweets: usr.tweets))
        }
        loadTweets = true
    }
}
#Preview {
    ContentView()
}
