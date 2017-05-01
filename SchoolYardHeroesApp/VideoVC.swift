//
//  VideoVC.swift
//  SchoolYardHeroesApp
//
//  Created by Kuma on 4/30/17.
//  Copyright © 2017 Kuma. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var videoTitle: UILabel!
    
    private var _schoolyardHeroe: SchoolyardHeroe!
    var schoolyardHeroe: SchoolyardHeroe {
        get {
            return _schoolyardHeroe
        } set {
            _schoolyardHeroe = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoTitle.text = schoolyardHeroe.videoTitle
        webView.loadHTMLString(schoolyardHeroe.videoUrl, baseURL: nil)
    }
    
    @IBAction func pressedBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
