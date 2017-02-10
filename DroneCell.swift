//
//  DroneCell.swift
//  PartyRockApp
//
//  Created by Robert Leonard on 2/9/17.
//  Copyright © 2017 Robert Leonard. All rights reserved.
//

import UIKit

class DroneCell: UITableViewCell {

    @IBOutlet weak var videoThumbnail: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var videoDesc: UILabel!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(droneVideo: DroneVideo) {
        videoTitle.text = droneVideo.videoTitle
        videoDesc.text = droneVideo.videoDesc
        
        let url = URL(string: droneVideo.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoThumbnail.image = UIImage(data: data)
                }
            } catch {
                // handle error
            }
        }
        
        
        
    }

}
