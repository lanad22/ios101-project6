//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Lana Do on 10/23/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var postImageView: UIImageView!
    
    @IBOutlet weak var caption: UITextView!
    var post: Post!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        caption.text = post.caption.trimHTMLTags()
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: postImageView)
        }
        caption.isScrollEnabled = true

        // Do any additional setup after loading the view.
    }
    
    

}
