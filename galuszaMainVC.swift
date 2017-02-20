//
//  ViewController.swift
//  haydenVCApp
//
//  Created by Hayden Galusza on 2/10/17.
//  Copyright © 2017 Hayden Galusza. All rights reserved.
//

import UIKit

class galuszaMainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [galuszaPartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let h1 = galuszaPartyRock(imageURL: "https://pbs.twimg.com/profile_images/640300013877202944/je6DCynn.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/VeXcTkbYTVk?ecver=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Devslopes Info")
        
        let h2 = galuszaPartyRock(imageURL: "https://media.licdn.com/mpr/mpr/AAEAAQAAAAAAAAURAAAAJDYwYjE4OTIwLWJlZDktNDJmNy1hNDMwLTZhYjk5MmNhMGMyNQ.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/N8KtLsI6bYc?ecver=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Devslopes Video")
        
        let h3 = galuszaPartyRock(imageURL: "https://yt3.ggpht.com/-kEAkPea4L1Y/AAAAAAAAAAI/AAAAAAAAAAA/4a6d4nSUI4E/s900-c-k-no-mo-rj-c0xffffff/photo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3mf0eMo6mak?ecver=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Devslopes Tutorial")
      
        let h4 = galuszaPartyRock(imageURL: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAdYAAAAJDIxOTdiMGIwLTdiYWYtNDM3Zi1iMjVmLTZhYmIxZmM3NWMzMw.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/hgIS_-nA8QY?ecver=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Devslopes Instructions")
        
        let h5 = galuszaPartyRock(imageURL: "https://about.udemy.com/wp-content/uploads/2016/07/IMG_2362.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/C90cEQWmsRY?ecver=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Devslopes Ask Mark")
        
        partyRocks.append(h1)
        partyRocks.append(h2)
        partyRocks.append(h3)
        partyRocks.append(h4)
        partyRocks.append(h5)
      
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? galuszaPartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
            
        } else {
            return UITableViewCell()
        }
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: "galuszaVideoVC", sender: partyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? galuszaVideoVCViewController {
            if let party = sender as? galuszaPartyRock {
                destination.galuszapartyRock = party
                
            }
        }
    }

}


    
    

