//
//  ViewController.swift
//  Using Combine + UIKit Simple App
//
//  Created by mac on 8/18/21.
//

import UIKit
import Combine

extension Notification.Name {
    static let newBlogPost = Notification.Name("newPost")
}

struct BlogPost {
    let title: String
}


class ViewController: UIViewController {

    
    @IBOutlet weak var blogTextField: UITextField!
    @IBOutlet weak var publishButton: UIButton!
    @IBOutlet weak var subscribedLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Create a publisher
    let publisher = NotificationCenter.Publisher(center: .default, name: .newBlogPost, object: nil)
     .map { (notification) -> String? in
         return (notification.object as? BlogPost)?.title ?? ""
    }
    
    
    
    
    

}

