//
//  HackathonApp.swift
//  Hackathon
//
//

import SwiftUI

@main
struct HackathonApp: App {
    @State var view = "home"
    var body: some Scene {
        WindowGroup {
            if view == "home" {
                ContentView()
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
                Button(action: {view="home"}, label: {Image(systemName: "house.fill")})
                Spacer()
                Button(action: {view="newTweet"}, label: {Image(systemName: "plus.circle.fill").font(.title)})
                Spacer()
                Button(action: {view="profile"}, label: {Image(systemName: "person.fill")})
                Spacer()
            }
            .frame(maxWidth:.infinity,maxHeight: 50)
        }
    }
}
