//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Surachan Liaowongphuthorn on 2/10/17.
//  Copyright © 2017 Surachan Liaowongphuthorn. All rights reserved.
//

import UIKit

class MainVCSmile: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var partyRocksSmile = [PartyRockSmile]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let p1 = PartyRockSmile(imageURL: "https://i.ytimg.com/vi/UxmQINxWI8Y/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=FA9bXfJwp_s2VsfWeCI_rXqQhVk", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/UxmQINxWI8Y?ecver=2\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "BEST POKEMON ATTACKS (This Week In Smosh) Smosh")
        
        let p2 = PartyRockSmile(imageURL: "https://i.ytimg.com/vi/LOlx48Adzps/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/LOlx48Adzps?ecver=2\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "HORRIBLE PRANK RUINS MAN'S LIFE")
        let p3 = PartyRockSmile(imageURL: "https://i.ytimg.com/vi/87SgjJUjePo/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/87SgjJUjePo?ecver=2\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "ADDICTED TO PRANKING (GONE SEXUAL)")
        let p4 = PartyRockSmile(imageURL: "http://liveimages-nf-edgecast.cdn.oncue.com/vod/27511886e9e34832bd69decf6cf5f1a4/1481798392891/T0/L11/worst-heist-ever-animated-smosh-animateddefault1-20_1920x1080.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lycDR_z0658?ecver=2\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "WORST HEIST EVER ANIMATED (Smosh Animated)")
        let p5 = PartyRockSmile(imageURL: "http://liveimages-nf-edgecast.cdn.oncue.com/vod/0ceb5a270bcb463d9be3a6dfd6389fa6/1480562106595/T0/L11/walking-on-water-smosh-labdefault1-20_1920x1080.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ASqD0hXy6iA?ecver=2\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "WALKING ON WATER?! (Smosh Lab)")
        
        partyRocksSmile.append(p1)
        partyRocksSmile.append(p2)
        partyRocksSmile.append(p3)
        partyRocksSmile.append(p4)
        partyRocksSmile.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cellSmile = tableView.dequeueReusableCell(withIdentifier: "PartyCellSmile", for: indexPath) as? PartyCellSmile {
            
            let partyRockSmile = partyRocksSmile[indexPath.row]
            
            cellSmile.updateUI(partyRockSmile: partyRockSmile)
            
            return cellSmile
            
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocksSmile.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let partyRockSmile = partyRocksSmile[indexPath.row]
        
        performSegue(withIdentifier: "VideoVCSmile", sender: partyRockSmile)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destinationSmile = segue.destination as? VideoVCSmile {
            
            if let partySmile = sender as? PartyRockSmile {
                destinationSmile.partyRockSmile = partySmile
            }
            
        }
        
    }


}

