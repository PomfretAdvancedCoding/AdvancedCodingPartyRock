//
//  VideoVCViewController.swift
//  haydenVCApp
//
//  Created by Hayden Galusza on 2/13/17.
//  Copyright © 2017 Hayden Galusza. All rights reserved.
//

import UIKit

class galuszaVideoVCViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    
    private var _partyRock: galuszaPartyRock!
    
    var galuszapartyRock: galuszaPartyRock {
        get {
            return _partyRock
        } set {
            _partyRock = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
        titleLbl.text = galuszapartyRock.videoTitle
        webView.loadHTMLString(galuszapartyRock.videoURL, baseURL: nil)
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
