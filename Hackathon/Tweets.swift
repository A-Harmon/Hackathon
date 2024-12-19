//
//  Tweets.swift
//  Hackathon
//
//

import Foundation

// Define a public struct for the User
public struct User:Hashable {
    public let displayName: String
    public let username: String
    public let profilePicture: String  // This could be a URL or an image name/path
    public let tweets: [String]

    // Initializer is needed to allow public access to the struct's properties
    public init(displayName: String, username: String, profilePicture: String, tweets: [String]) {
        self.displayName = displayName
        self.username = username
        self.profilePicture = profilePicture
        self.tweets = tweets
    }
}

// Create a public array of User objects
public let users: [User] = [
    User(displayName: "Percy Jackson", username: "perseus", profilePicture: "profile1.png", tweets: [
        "Just tried to reason with Poseidon... turns out he's still mad about the whole 'minor flood' incident. Water you gonna do? #DemigodProblems #SeaGodProblems",
        "Current mood: I'm stuck in a mythological version of puberty, but with more gods arguing over who gets to control the world and less acne. #DemigodProbs #GreekYouth #TitanWar",
        "Just had to dodge a Cyclops in the parking lot at Camp Half-Blood. Because, you know, that's just a typical Tuesday morning. #DemigodProblems #CampHalfBlood #MonstersInMyBackyard",
        "Grover just got a new haircut... I'm pretty sure I saw a few dozen centaurs start a 'save his mane' petition. Maybe we should just get him a donkey #CentaursForGrover #HairdoHero",
        "Jason and Piper on a quest together is like a recipe for disaster... except the disaster is just really good entertainment. Don't tell them, but I'm live tweeting this for free therapy #DemigodDrama #QuestingCouple",
        "Currently trying to enjoy a picnic with a demigod, a satyr, a daughter of Aphrodite, a centurion's daughter, and a son of Hephaestus... this is going to end well. #demigodlife #picnicfail"
    ]),
    User(displayName: "Jane Smith", username: "jane_smith", profilePicture: "profile2.png", tweets: [
        "Exploring new places today!",
        "Learning Swift has been amazing!",
        "Life is good! 😊"
    ])
]
