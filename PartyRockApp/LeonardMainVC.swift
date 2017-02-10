//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Robert Leonard on 2/9/17.
//  Copyright © 2017 Robert Leonard. All rights reserved.
//

import UIKit

class LeonardMainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var droneCells = [DroneVideo]()
    
    private var _selectedSong: String!
    
    var selectedSong: String {
        get {
            return _selectedSong
        } set {
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let d1 = DroneVideo(imageURL: "https://i.ytimg.com/vi/bOWkkoczEPQ/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/bOWkkoczEPQ\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "The Sport of the Future", videoDesc: "Get ready for the sport of the future...")
        
        let d2 = DroneVideo(imageURL: "https://i.ytimg.com/vi/zSGv8yPqrHc/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=IY5QulEGxYPoK3BRQaYardfk5EE", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zSGv8yPqrHc\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Everything is about to change", videoDesc: "Watch this FPV feed from the 2017 DRL... ")
        
        let d3 = DroneVideo(imageURL: "https://i.ytimg.com/vi/XvQoz0YGO6c/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=8OAycV0hq50b_uqDtxiCB_KRN6Y", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/XvQoz0YGO6c\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "How does the DRL Racer2 FPV...", videoDesc: "Learn the mechanics behind the DRL...")
        
        let d4 = DroneVideo(imageURL: "https://i.ytimg.com/vi/gb9JgQsUzM4/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=RZwC9anNVSEu3c6NDNeeBVg_TrA", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://youtu.be/gb9JgQsUzM4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "What it's like to fly a racing drone", videoDesc: "DRL pilots talk about the challenges of... ")
        
        
        
        droneCells.append(d1)
        droneCells.append(d2)
        droneCells.append(d3)
        droneCells.append(d4)
        
        // add more data sets
            
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "DroneCell", for: indexPath) as? DroneCell {
            
            let droneCell = droneCells[indexPath.row]
            
            cell.updateUI(droneVideo: droneCell)
            
            return cell
            
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return droneCells.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //let droneVideo = droneCells[indexPath.row]
        
        performSegue(withIdentifier: "LeonardVideoVC", sender: droneCells[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? LeonardVideoVC {
            if let drone = sender as? DroneVideo {
                destination.droneVideo = drone
            }
        }
    }

}

