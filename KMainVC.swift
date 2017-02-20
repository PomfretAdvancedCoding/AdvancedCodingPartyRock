//
//  ViewController.swift
//  memeApp
//
//  Created by Khanh Vu on 2/10/17.
//  Copyright © 2017 Vu. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var partyRocks = [PartyRock]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "https://ih0.redbubble.net/image.214891103.0599/flat,1000x1000,075,f.u2.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BAOxk9PGhsY\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "here come dat boi")
        
        let p2 = PartyRock(imageURL: "http://static.boredpanda.com/blog/wp-content/uploads/2016/06/gorilla-shot-boy-zookeper-explains-harambe-amanda-odonoughue-cincinnati-zoo-1.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Py_1aCt2c0s\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Harambe")
        
        let p3 = PartyRock(imageURL: "https://pbs.twimg.com/profile_images/735571268641001472/kM_lPhzP.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ftVft2MkDdo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Caveman Spongebob")
        
        let p4 = PartyRock(imageURL: "https://i.ytimg.com/vi/PaWsPNocS_4/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Q2daFOY9e4Q\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Thug Life")
        
        let p5 = PartyRock(imageURL: "http://pixel.nymag.com/imgs/daily/selectall/2016/06/09/09-bee-movie.w536.h357.2x.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/E6iN6VTL7v8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Bee Movie")
        
        let p6 = PartyRock(imageURL: "https://thumbs.dreamstime.com/x/important-stamp-13622174.jpg", videoURL: "<<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/UgBqBUAo7tw\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Guy dig up important message ")
        
        let p7 = PartyRock(imageURL: "https://i.ytimg.com/vi/-070UDfeQFo/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gy1B3agGNxw\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Epic sax guy ")

        
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p7)
        partyRocks.append(p5)
        partyRocks.append(p6)
        
       tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            return cell
            
        } else {
            return UITableViewCell()
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        performSegue(withIdentifier: "KVideoVC", sender: partyRock)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? KVideoVC {
            if let party =  sender as? PartyRock {
                destination.partyRock = party
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

