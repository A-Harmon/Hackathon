//
//  HackathonApp.swift
//  Hackathon
//
//

import SwiftUI

@main
struct HackathonApp: App {
    @State var view = "home"
    @State var tweets: [User] = []
    var body: some Scene {
        WindowGroup {
            VStack {
                if view == "home" {
                    ContentView(tweets: $tweets)
                }
                if view == "newTweet" {
                    WriteView()
                }
                if view == "profile" {
                    ProfileView(user: odysseus)
                }
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {view="home"}, label: {Image(systemName: "house.fill").foregroundStyle(Color.main)})
                    Spacer()
                    Button(action: {view="newTweet"}, label: {Image(systemName: "plus.circle.fill").font(.title).foregroundStyle(Color.main)})
                    Spacer()
                    Button(action: {view="profile"}, label: {Image(systemName: "person.fill").foregroundStyle(Color.main)})
                    Spacer()
                }
                .frame(maxWidth:.infinity,maxHeight: 50)
            }
            .onAppear {
                GetTweets()
            }
        }
    }
    func GetTweets() {
        for x in 10...Int.random(in: 20...40) {
            let usr = users[Int.random(in: 0...users.count-1)]
            tweets.append(User(displayName: usr.displayName, username: usr.username, profilePicture: usr.profilePicture, followers: usr.followers, tweets: usr.tweets))
        }
    }
}
