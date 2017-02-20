//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Surachan Liaowongphuthorn on 2/10/17.
//  Copyright © 2017 Surachan Liaowongphuthorn. All rights reserved.
//

import Foundation


class PartyRockSmile {
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
}
