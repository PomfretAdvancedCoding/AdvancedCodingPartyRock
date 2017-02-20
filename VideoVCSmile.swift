//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Surachan Liaowongphuthorn on 2/10/17.
//  Copyright © 2017 Surachan Liaowongphuthorn. All rights reserved.
//

import UIKit

class VideoVCSmile: UIViewController {

    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var titleLbl: UILabel!
    private var _partyRockSmile: PartyRockSmile!
    
    var partyRockSmile: PartyRockSmile {
        get {
            return _partyRockSmile
        } set {
            _partyRockSmile = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = partyRockSmile.videoTitle
        webView.loadHTMLString(partyRockSmile.videoURL, baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
