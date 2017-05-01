//
//  ItemTableViewCell.swift
//  SchoolYardHeroesApp
//
//  Created by Kuma on 4/30/17.
//  Copyright © 2017 Kuma. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell { 
    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func updateUI(_ schoolyardHeroe: SchoolyardHeroe) {
        videoTitle.text = schoolyardHeroe.videoTitle
        
        let url = URL(string: schoolyardHeroe.imageUrl)!
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                //handle the error
            }
        }
    }

}
