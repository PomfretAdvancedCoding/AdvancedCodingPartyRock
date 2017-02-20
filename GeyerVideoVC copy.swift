//
//  VideoVCGeyer.swift
//  partyrockGeyer
//
//  Created by Yves Geyer on 2/13/17.
//  Copyright © 2017 Yves Geyer. All rights reserved.
//

import UIKit

class GeyerVideoVC: UIViewController {
//exlamation mark on the outlet is very important
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var titleLBL: UILabel!
    
    private var _partyRock: GeyerPartyRock!
    
    var partyRock: GeyerPartyRock!{
        get{
            return _partyRock
        }set{
            _partyRock = newValue
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLBL.text = partyRock.videoTitle
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
    }

    
}
    




