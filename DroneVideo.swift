//
//  DroneVideo.swift
//  PartyRockApp
//
//  Created by Robert Leonard on 2/9/17.
//  Copyright © 2017 Robert Leonard. All rights reserved.
//

import Foundation


class DroneVideo {
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    private var _videoDesc: String!
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    var videoDesc: String {
        return _videoDesc
    }
    
    init(imageURL: String, videoURL: String, videoTitle: String, videoDesc: String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
        _videoDesc = videoDesc
        
    }
    
}
