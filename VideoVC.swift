//
//  VideoVC.swift
//  PartyRockApp
//
//  Created by Robert Leonard on 2/9/17.
//  Copyright © 2017 Robert Leonard. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    @IBOutlet weak var backBtn: UIButton!
    
    private var _droneVideo: DroneVideo!
    
    var droneVideo: DroneVideo {
        get {
            return _droneVideo
        } set {
            _droneVideo = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = droneVideo.videoTitle
        descLabel.text = droneVideo.videoDesc
        webView.loadHTMLString(droneVideo.videoURL, baseURL: nil)

    }

    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }


}
