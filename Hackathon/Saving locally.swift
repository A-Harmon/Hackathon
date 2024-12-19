//
//  Saving locally.swift
//  Hackathon
//

import UIKit

class PostViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        guard let title = titleTextField.text, !title.isEmpty,
              let content = contentTextView.text, !content.isEmpty else {
            print("Title or content is empty.")
            return
        }
        
        savePostToUserDefaults(title: title, content: content)
    }
    
    func savePostToUserDefaults(title: String, content: String) {
        var posts = UserDefaults.standard.array(forKey: "posts") as? [[String: String]] ?? []
        
        let post = ["title": title, "content": content]
        posts.append(post)
        
        UserDefaults.standard.set(posts, forKey: "posts")
        
        print("Post saved!")
        
        titleTextField.text = ""
        contentTextView.text = ""
    }
    
    func loadPostsFromUserDefaults() -> [[String: String]] {
        return UserDefaults.standard.array(forKey: "posts") as? [[String: String]] ?? []
    }
}
