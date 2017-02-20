//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Surachan Liaowongphuthorn on 2/10/17.
//  Copyright © 2017 Surachan Liaowongphuthorn. All rights reserved.
//

import UIKit

class PartyCellSmile: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func updateUI(partyRockSmile: PartyRockSmile) {
        videoTitle.text = partyRockSmile.videoTitle
        
        let url = URL(string: partyRockSmile.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch  {
                //handle the error
            }
        }

    }

}
