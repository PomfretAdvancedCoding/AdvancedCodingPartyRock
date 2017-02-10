//
//  EntryVC.swift
//  PartyRockApp
//
//  Created by Robert Leonard on 2/10/17.
//  Copyright © 2017 Robert Leonard. All rights reserved.
//

// goddamn segue still no worky

import UIKit

class EntryVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // The following code is my failed attempt at a segue. Fix it. 
    
 

    @IBAction func leonardPressed(_ sender: Any) {
        
        let songTitle = "Quit"
        performSegue(withIdentifier: "LeonardMainVC", sender: songTitle)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? LeonardMainVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
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
