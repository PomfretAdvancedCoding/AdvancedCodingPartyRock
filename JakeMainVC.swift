//
//  ViewController.swift
//  Rock App
//
//  Created by Jake Farrell on 2/9/17.
//  Copyright © 2017 Jake Farrell. All rights reserved.
//

import UIKit

class JakeMainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var jakeTableView: UITableView!
    
    var NHLdata = [NHL]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let highlight1 = NHL(imageURL: "https://i.ytimg.com/vi/b6Mp1307Bzs/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=-MAMbifj4ywsKfWEODh_EYPZRJc",
                             videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/b6Mp1307Bzs\" frameborder=\"0\" allowfullscreen></iframe>",
                             videoTitle: "Vancouver Canucks vs Buffalo Sabres")
        
        let highlight2 = NHL(imageURL: "https://i.ytimg.com/vi/c92pJqiTHdE/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=YErPGNh9lJRXqZiUvSqzE3dJGhQ",
                             videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/c92pJqiTHdE\" frameborder=\"0\" allowfullscreen></iframe>",
                             videoTitle: "Montreal Canadiens vs Boston Bruins")
        
        let highlight3 = NHL(imageURL: "https://i.ytimg.com/vi/8k0dqgGZ2UQ/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=AGc5cJp92qNgEoD9gTWmUH293HA",
                             videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/8k0dqgGZ2UQ\" frameborder=\"0\" allowfullscreen></iframe>",
                             videoTitle: "Colorado Avalanche vs New York Islanders")
        
        let highlight4 = NHL(imageURL: "https://i.ytimg.com/vi/FWXX6_csAjI/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=JdwhdIl6ra9HHD5kLaqqZY5wVLk",
                             videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FWXX6_csAjI\" frameborder=\"0\" allowfullscreen></iframe>",
                             videoTitle: "Dallas Stars vs Nashville Predators")
        
        let highlight5 = NHL(imageURL: "https://i.ytimg.com/vi/zxSvCNbn0ks/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=kFXbBFSnSqBgNUCDnv26xYXfo5g",
                             videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zxSvCNbn0ks\" frameborder=\"0\" allowfullscreen></iframe>",
                             videoTitle: "San Jose Sharks vs New Jersey Devils")
        
        let highlight6 = NHL(imageURL: "https://i.ytimg.com/vi/dkM5cD1T0VY/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=gt8uYXtXnG7NZOv6ORzZBZ_dHPs",
                             videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/dkM5cD1T0VY\" frameborder=\"0\" allowfullscreen></iframe>",
                             videoTitle: "Chicago Blackhawks vs Edmonton Oilers")
        
        let highlight7 = NHL(imageURL: "https://i.ytimg.com/vi/mPNCkQkbiNE/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=m0Tom4EzNOzLV6M230OV37uzG9g",
                             videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mPNCkQkbiNE\" frameborder=\"0\" allowfullscreen></iframe>",
                             videoTitle: "Pittsburgh Penguins vs Arizona Coyotes")
        
        NHLdata.append(highlight1)
        NHLdata.append(highlight2)
        NHLdata.append(highlight3)
        NHLdata.append(highlight4)
        NHLdata.append(highlight5)
        NHLdata.append(highlight6)
        NHLdata.append(highlight7)
        
        jakeTableView.delegate = self
        jakeTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "HockeyCell", for: indexPath) as? JakeCell{
            
            let videoSource = NHLdata[indexPath.row]
            
            cell.updateUI(videoSource: videoSource)
            
            return cell
        } else{
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NHLdata.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let highlight = NHLdata[indexPath.row]
        
        performSegue(withIdentifier: "JakeVideoVC", sender: highlight)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
    
        if let destination = segue.destination as? JakeVideoVC {
            
            if let party = sender as? NHL {
                destination.highlight = party
            }
            
        }
    }
}

