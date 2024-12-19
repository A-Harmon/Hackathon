//
//  Saving locally.swift
//  Hackathon
//
//  Created by Anastasia Harmon on 12/19/24.
//

//import Foundation
//import SwiftUI
import UIKit

func savePost(title: String, content: String) {
    let post = ["title": title, "content": content]
    var posts = UserDefaults.standard.array(forKey: "posts") as? [[String: String]] ?? []
    posts.append(post)
    UserDefaults.standard.set(posts, forKey: "posts")
}

// Load saved posts
func loadPosts() -> [[String: String]] {
    return UserDefaults.standard.array(forKey: "posts") as? [[String: String]] ?? []
}
