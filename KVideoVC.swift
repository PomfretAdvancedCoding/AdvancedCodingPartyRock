//
//  VideoVC.swift
//  memeApp
//
//  Created by Khanh Vu on 2/12/17.
//  Copyright © 2017 Vu. All rights reserved.
//

import UIKit

class KVideoVC: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var titleLbl: UILabel!
    
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock {
        get {
            return _partyRock
        } set {
            _partyRock = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = partyRock.videoTitle
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
