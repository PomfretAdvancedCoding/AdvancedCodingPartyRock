//
//  PartyCellTableViewCell.swift
//  Rock App
//
//  Created by Jake Farrell on 2/9/17.
//  Copyright © 2017 Jake Farrell. All rights reserved.
//

import UIKit

class JakeCell: UITableViewCell {
   
    @IBOutlet weak var jakeVideoPreviewImage: UIImageView!
    
    @IBOutlet weak var jakeVideoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    

    func updateUI(videoSource: NHL){
        jakeVideoTitle.text = videoSource.videoTitle
        
        let url = URL(string: videoSource.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.jakeVideoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                //handle the error
            }
        }
        
    }
    
}
