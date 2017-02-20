//
//  VideoVC.swift
//  Rock App
//
//  Created by Jake Farrell on 2/9/17.
//  Copyright © 2017 Jake Farrell. All rights reserved.
//

import UIKit

class JakeVideoVC: UIViewController {
    
    @IBOutlet weak var jakeWebView: UIWebView!
    
    @IBOutlet weak var jakeTitleLbl: UILabel!
    
    @IBAction func backbtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
   
   
    private var _highlight: NHL!
    
    var highlight: NHL {
        get{
            return _highlight
        } set{
            _highlight = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        jakeTitleLbl.text = highlight.videoTitle
        
        jakeWebView.loadHTMLString(highlight.videoURL, baseURL: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
