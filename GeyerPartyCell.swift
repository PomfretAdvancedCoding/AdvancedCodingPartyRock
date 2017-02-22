//
//  tableCellVCGeyer.swift
//  partyrockGeyer
//
//  Created by Yves Geyer on 2/13/17.
//  Copyright © 2017 Yves Geyer. All rights reserved.
//

import UIKit

class GeyerPartyCell: UITableViewCell {

    
    override func awakeFromNib() {
        super.awakeFromNib()
            }
    
    @IBOutlet weak var videoPreviewImage: UIImageView!

    @IBOutlet weak var videoTitle: UILabel!
    
    
    func updateUI(partyRock: GeyerPartyRock){ // the first party rock is new but the second is from the modle folder.
        videoTitle.text = partyRock.videoTitle
        
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {//this code handels the donlowd of the picturns on the app.
            do{
                let data = try Data(contentsOf: url)
                
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            }catch {
                //handel the error
            }
        }
        
    }
}
