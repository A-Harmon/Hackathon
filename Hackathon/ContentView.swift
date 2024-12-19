//
//  ContentView.swift
//  Hackathon
//
//

import SwiftUI
import UIKit


    struct ContentView: View {
        
        var body: some View {
            VStack {
                HStack{
                    Text("InstaGreek")
                        .font(.largeTitle)
                        .bold()
                    
                }
                Text("Home")
                    .font(.title2)
                
                ScrollView{
                    
                }
            }
            Spacer()
        }
        class PostsListViewController: UIViewController, UITableViewDataSource {
            
            @IBOutlet weak var tableView: UITableView!
            
            var posts = [[String: String]]()
            
            override func viewDidLoad() {
                super.viewDidLoad()
                
                // Load saved posts from UserDefaults
                loadPostsFromUserDefaults()
            }
        
        func loadPostsFromUserDefaults() {
            posts = UserDefaults.standard.array(forKey: "posts") as? [[String: String]] ?? []
            tableView.reloadData()
        }
        
        // UITableView DataSource Methods
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return posts.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath)
            let post = posts[indexPath.row]
            
            cell.textLabel?.text = post["title"]
            cell.detailTextLabel?.text = post["content"]
            
            return cell
        }
    }
}
#Preview {
    ContentView()
}
