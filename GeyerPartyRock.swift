//
//  dataArrayFile.swift
//  partyrockGeyer
//
//  Created by Yves Geyer on 2/13/17.
//  Copyright © 2017 Yves Geyer. All rights reserved.
//

import Foundation

class GeyerPartyRock {
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    
    var imageURL: String{
        return _imageURL
    }
    var videoURL: String{
        return _videoURL
    }
    var videoTitle: String{
        return _videoTitle
    }
    
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
}
