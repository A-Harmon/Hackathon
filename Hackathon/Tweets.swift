//
//  Tweets.swift
//  Hackathon
//
//

import Foundation

// Define a public struct for the User
public struct User:Hashable,Identifiable {
    public let displayName: String
    public let username: String
    public let profilePicture: String  // This could be a URL or an image name/path
    public let followers: Int64
    public var tweets: [String]
    public var id = UUID()

    // Initializer is needed to allow public access to the struct's properties
    public init(displayName: String, username: String, profilePicture: String, followers: Int64, tweets: [String]) {
        self.displayName = displayName
        self.username = username
        self.profilePicture = profilePicture
        self.followers = followers
        self.tweets = tweets
    }
    
    // Adds new tweets
    mutating func NewTweet(_ new: String) {
        tweets.append(new)
    }
}

public var odysseus = User(displayName: "Odysseus", username: "odysseus", profilePicture: "Odysseus", followers: 500, tweets: ["Currently thinking about getting on a Trojan Horse and invading Greek... will post lots of updates!"])

// Create a public array of User objects
public let users: [User] = [
    User(displayName: "Percy Jackson", username: "perseus", profilePicture: "Perseus", followers: 135000, tweets: [
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
    User(displayName: "Zeus", username: "zeus", profilePicture: "Zeus", followers: 1567013, tweets: [
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
        "Disloyalty runs deep in Mount Olympus. Once again, my trust has been broken. Zeus, king of the gods, thinks he's above the law #GoddessJealousy #LoyalHera",
        "No divine dish is as divine as ambrosia cake! Rich, decadent, and made with the finest nectar, it's the perfect treat for a goddess like me #GoddessCuisine #AmbrosiaCake",
        "No mortal can escape my mighty powers! I rule over childbirth, marriage, and childbirth - claiming the loyalty of all women in ancient Greece #GoddessPower #MaternalProtection",
        "Percy Jackson thinks he's so brave, battling monsters on Long Island. Little does he know, the real battles are fought by the gods themselves #GoddessLife #PercyJackson",
        "My husband's charm may be golden, but his lies are as deceiving as a storm cloud from Mount Olympus #GodlyDrama #HeraUnfiltered",
        "Sipping ambrosia cocktails on the shores of Elysium, surrounded by the whispers of the blessed. My divine getaway is proving to be divine indeed #GoddessVacation #Paradise",
        "There may be only one Lord of the Underworld, but make no mistake, I'm the one ruling all things precious and priceless... including his riches #GoddessOfWealth #HadesBows",
        "Mortals and their fleeting lives...it's a wonder they get anything right, considering I'm the one who made marriage a lifelong test #GoddessOfWedlock #MortalChallenges",
        "Just witnessed a mortal couple share a romantic kiss under the bright lights of Times Square. How quaint. Meanwhile, my marriage to Zeus is still being tested #GoddessOfLove #MortalRomance",
        "Just witnessed a mortal doing math on the subway, staring at a tiny screen as if their life depends on it. Meanwhile, Poseidon's trident controls the tides of the Hudson... priorities? #GoddessInTheBigApple #MortalObsessions"
    ]),
    User(displayName: "Aphrodite", username: "aphrodite", profilePicture: "profile3.pg", followers: 1161136133, tweets: [
        "My darling Hephaestus, the master of fire and forge. Though unassuming, his heart beats with love for me & our love is stronger than any metal he crafts #LoveKnowsNoBounds #HusbandGoals",
        "My beauty shines like the morning dew on a Greek isle, captivating hearts and souls with each tender glance. Irresistible, radiant, and forever divine. Goddess of love #GoddessVibes #LoveAtFirstSight",
        "It warms this mother's heart to see my daughter Piper weaving her charm and magic, captivating all who surround her with kindness and gentle persuasion. A true heir to my throne of love #GoddessFamily #PiperLove",
        "Oui, l'amour... It was I, Aphrodite, who wove the language of French, a tapestry of tender affection, passionate declarations, and whispered sweet nothings. No wonder the French call it the language of romance #FrenchForever #GoddessOfLove",
    ]),
    User(displayName: "Hercules", username: "hercules", profilePicture: "Hercules", followers: 165342, tweets: [
        "Did the 12 Labors in a row, from slaying the Nemean Lion to stealing the Golden Hesperides' apples. Learned discipline, hard work & humility on that journey. Glad I pushed myself & made it through, but a new adventure awaits! #HerculeanEgo #ChallengeComplete",
        "Life after death has its perks! Sipping ambrosia with the gods, strolling through the Elysian Fields, and swapping war stories with the 'good' souls. My current favorite pastime: arm wrestling with Theseus. Still undefeated, of course. #ElysianLife #GodOfGSaintlyAleness",
        "Nothing says 'divine' like a game of ping pong? Just took down Athena in a best-of-5 on Mount Olympus's ping pong court. Not just a hero's strength, but a hero's reflexes. Don't mess with the 12-time labor-winning champion! #PingPongGuru #GodModeActive",
        "Eggs? Really? Can't they see how overrated they are?! Scrambled, fried, poached... no shade, but I'd take a Hydra's fiery breath any day. Don't get the hype, folks. The 12 Labors were a breeze compared to swallowing another omelette #EggHater #HerculeanHunger",
        "The truth about the 12 Labors. Some say King Eurystheus bullied me into it, but the real reason I did it was to prove that even a demigod can be human. To show that with enough sweat, blood, and toil, anyone can achieve greatness, even when it seems impossible #HerculesOfHumility #TheTrue12Labors",
        "Even Aphrodite's radiant goddess beauty can't compare to the stunning loveliness of my wife, Megara. Her strength, heart, and charm have captivated me since the moment I met her. She's the true goddess in my eyes #HerculesMadlyInLove #GoddessOfMyHeart",
        "Just a fun fact: did you know my sacred number is 12? From the 12 Labors to my 12 virtues, that number holds a special place in my heart It's a nod to the cycles of the universe and the hero's journey, reminding me to strive for balance #HerculeanVirtues #SacredNumber"
    ]),
]
