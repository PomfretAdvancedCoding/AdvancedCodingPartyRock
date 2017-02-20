//
//  ViewController.swift
//  
//
//  Created by Yves Geyer on 2/10/17.
//  Copyright © 2017 Yves Geyer. All rights reserved.
//

import UIKit

class GeyerMainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableview:UITableView!
    //the arry name is new. The stuff inside the arry is from the modle folder
    var partRocks = [GeyerPartyRock]()
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // had to add first perantises the get the atou complete
        //also add back slashes \ in front of every qoutation " to make link work. Got tlink for youtube under video in share then in embed.
        let cell1 = GeyerPartyRock(imageURL: "https://i.ytimg.com/vi/KSX6qXL4G20/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=TrhtnGmB3mM6iX4l1R-8ozMJ_Gw", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KSX6qXL4G20\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Why's a Metaer a Meter")
        let cell2 = GeyerPartyRock(imageURL: "https://i.ytimg.com/vi/0pvtu-ADZSU/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=eVdg1Ycq5-k6VHg3zNKH2vso8Sc", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/0pvtu-ADZSU\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Lava Lake in Anatartica")
        let cell3 = GeyerPartyRock(imageURL: "https://i.ytimg.com/vi/bdVkkRmJEeM/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=B-3FvFaiFvKgf_-XUvLFwChfOKg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/bdVkkRmJEeM\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Is public Wifi Safe")
        let cell4 = GeyerPartyRock(imageURL: "https://i.ytimg.com/vi/UMqUqdq13XE/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=aR6bx14vvIqLc-SYHnOuni8vXyg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/UMqUqdq13XE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Can Poppy Seeds Make you Fail a Drug Test")
        let cell5 = GeyerPartyRock(imageURL: "https://i.ytimg.com/vi/GrPQv6QEI8Y/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=uIMNyU4TdmsxhYc4-Q6i6EDcMVs", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GrPQv6QEI8Y\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "the STrongest Bases in the World")
               
        
        partRocks.append(cell1)
        partRocks.append(cell2)
        partRocks.append(cell3)
        partRocks.append(cell4)
        partRocks.append(cell5)

        
        tableview.delegate = self
        tableview.dataSource = self
        
    }
 
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // this goes after the second perantheses " as? PartyCell"
       
        
        if let cell = tableview.dequeueReusableCell(withIdentifier: "GeyerePartyCell", for: indexPath)  as? GeyerPartyCell {// the party cell is refrancing the identifyer of the cells in the table.
            
            
            let partyRock = partRocks[indexPath.row] // the first rock is to use in the fuction below and the second is the refrance the arry.
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
        } else {
            return UITableViewCell()
        }

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partRocks.count // this party rock refrances the arry above.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let partyRock = partRocks[indexPath.row]
        
    
    performSegue(withIdentifier: "GeyerVideoVC", sender: partyRock)
        
    }
    
        
  
    /*
       override func prepare(for: UIStoryboardSegue, sender: Any?) {
            
            if let destination = segue.destination as? GeyerVideoVC{
                
                if let party = sender as? GeyerPartyRock{
                    destination.partyrock = party
                }
            }
            
        }
        */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? GeyerVideoVC {
            
            if let party = sender as? GeyerPartyRock {
                destination.partyRock = party
            }
            
        }
        
    }

    
    
    
}

