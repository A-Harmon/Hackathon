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
    public let followers: Int64
    public let tweets: [String]

    // Initializer is needed to allow public access to the struct's properties
    public init(displayName: String, username: String, profilePicture: String, followers: Int64, tweets: [String]) {
        self.displayName = displayName
        self.username = username
        self.profilePicture = profilePicture
        self.followers = followers
        self.tweets = tweets
    }
}

// Create a public array of User objects
public let users: [User] = [
    User(displayName: "Percy Jackson", username: "perseus", profilePicture: "profile1.png", followers: 135000, tweets: [
        "Just tried to reason with Poseidon... turns out he's still mad about the whole 'minor flood' incident. Water you gonna do? #DemigodProblems #SeaGodProblems",
        "Current mood: I'm stuck in a mythological version of puberty, but with more gods arguing over who gets to control the world and less acne. #DemigodProbs #GreekYouth #TitanWar",
        "Just had to dodge a Cyclops in the parking lot at Camp Half-Blood. Because, you know, that's just a typical Tuesday morning. #DemigodProblems #CampHalfBlood #MonstersInMyBackyard",
        "Grover just got a new haircut... I'm pretty sure I saw a few dozen centaurs start a 'save his mane' petition. Maybe we should just get him a donkey #CentaursForGrover #HairdoHero",
        "Jason and Piper on a quest together is like a recipe for disaster... except the disaster is just really good entertainment. Don't tell them, but I'm live tweeting this for free therapy #DemigodDrama #QuestingCouple",
        "Currently trying to enjoy a picnic with a demigod, a satyr, a daughter of Aphrodite, a centurion's daughter, and a son of Hephaestus... this is going to end well. #demigodlife #picnicfail",
        "Currently running for my life with the Chiron-approved Co-Pilot Annabeth (i.e. the smartest and most capable demigod I know), because who needs a sunny beach vacation, anyway? #godsproblems #demigodadventures",
        "Just watched Jason and Piper bicker over who ate the last sandwich. Meanwhile, the Titans are still roaming free and I'm over here worrying about snacks #JasonAndPiper #DemigodDrama",
        "Just got a package from my mom with a care package that includes BLUE COOKIES because what every demigod needs is a sugar rush to survive a quest #BlueCookiesForLife #MonsterKillingFuel",
        "Just had the most epic snack ever: ambrosia with fresh fruit! Don't @ me, but it's basically the only thing that can get me to deal with Atlas's sass #AmbrosiaLove #GodlySnacks",
        "Apparently, mortals think we're worried about ghosts and the boogeyman? Meanwhile, I've got monsters from Greek mythology trying to kill me on the reg #DemigodProblems #GhostSquad"
    ]),
    User(displayName: "Zeus", username: "zeus", profilePicture: "profile2.png", followers: 1567013, tweets: [
        "Proud father moment: my demigod son Jason bravely pursues the Golden Fleece. His bravery is a shining example of the gods' heritage #GODSOFMTOWIELD",
        "Mortals! News from Olympus: Jason & Piper's love is as strong as a thunderbolt. May their adventure bring blessings from the gods! #GreekGods #SupernaturalLove",
        "My beloved wife & queen, Hera. Unyielding in her devotion, fierce in her protection. The envy of earthy wives, the reverence of the gods. #HeraTheQueen #Olympus",
        "The bonds of marriage, they can be...confining. A god's desires, like the winds, cannot be tamed. I am Zeus, King of the Sky. I rule, I create, I love. With whom I choose. #MortalWoes #GodlyPursuits",
        "Avalon's verdant threshold, Jason's final rest. Hero's fate, a mortal's demise. Weep not, noble Jason, for in Olympus, your deeds will be told for eternity. #GodsRemember #heroicLegacy",
        "Rumors from beyond the mortal realm: Vallhala, a supposed realm of bravery & warrior's glory. I am Zeus, King of Olympus, I know all realms. This nonsensical place is but a faint whisper, a myth perpetuated by mortal imagination. #OlymopianTruth #VallhalanLie",
        "No wonder the Greeks love me: Nectar and ambrosia in abundance, yet my true weakness lies with... Olympian BBQ. Sizzling mead-glazed offerings, straight from Mount Olympus's finest cooking gods. Now that's divine! #GodlyGrub #ZeusApproved",
        "My favorite dish: Golden apples from the Garden of the Hesperides, served with a side of ambrosial honey. A feast fit for a king (of the gods, of course!) #GreekGods #FavoriteDish"
    ]),
    User(displayName: "Hera", username: "hera", profilePicture: "profile3.png", followers: 113, tweets: [
        "Disloyalty runs deep in Mount Olympus. Once again, my trust has been broken. Zeus, king of the gods, thinks he's above the law #GoddessJealousy #LoyalHera"
    ]),
]
