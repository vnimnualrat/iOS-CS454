//
//  ViewController.swift
//  ImageRequest
//
//  Created by Jarrod Parkes on 11/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController

class ViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // An NSURL object represents a URL that contain the location of a resource on a remote server
        let imageURL = NSURL(string: "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg")!
        
        // Class that can manage network requests on our behalf
        // Singleton - Can only be instantiated once
        let task = NSURLSession.sharedSession().dataTaskWithURL(imageURL) { (data, response, error) in
            print("task finished")
            
            if error == nil {
                let downloadedImage = UIImage(data: data!)
                
                performUIUpdatesOnMain {
                    self.imageView.image = downloadedImage
                }
                
            }
        }

        task.resume()
        
    }
}
