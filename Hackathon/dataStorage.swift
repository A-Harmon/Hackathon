//
//  dataStorage.swift
//  Hackathon
//
//
//

//import Foundation
//class DataStorageManager {
//    
//    // Shared instance for singleton pattern (optional)
//    static let shared = DataStorageManager()
//    
//    // Key to store posts in UserDefaults
//    private let postsKey = "posts"
//    
//    // Save the post to UserDefaults
//    func savePost(_ post: Post) {
//        var posts = loadPosts() // Load existing posts
//        
//        // Append new post
//        posts.append(post)
//        
//        // Save the updated array to UserDefaults
//        let encodedPosts = try? JSONEncoder().encode(posts)
//        UserDefaults.standard.set(encodedPosts, forKey: postsKey)
//    }
//    
//    // Load posts from UserDefaults
//    func loadPosts() -> [Post] {
//        if let data = UserDefaults.standard.data(forKey: postsKey),
//           let posts = try? JSONDecoder().decode([Post].self, from: data) {
//            return posts
//        }
//        return [] // Return empty array if no posts are found
//    }
//}
