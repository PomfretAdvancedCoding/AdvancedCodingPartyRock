//
//  PartyCell.swift
//  haydenVCApp
//
//  Created by Hayden Galusza on 2/13/17.
//  Copyright © 2017 Hayden Galusza. All rights reserved.
//

import UIKit

class galuszaPartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
 
    }

    func updateUI(partyRock: galuszaPartyRock) {
        videoTitle.text = partyRock.videoTitle
        
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image =
                        UIImage(data: data)
                }
            } catch  {
                //handle the error
            
        }
        
    }
    }
}
