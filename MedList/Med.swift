//
//  Med.swift
//  MedList
//
//  Created by Britney Martinez on 12/8/16.
//  Copyright © 2016 NYU. All rights reserved.
//

import Foundation

class Med {
    var name = ""
    var type = ""
    var image =  ""
    var timesADay = ""
    var volume = ""
    var url = ""
    var reason = ""
    var diseaseUrl = ""
    
    init(name: String, type: String, image: String, timesADay: String, volume: String, url: String, reason: String,diseaseUrl: String){
        self.name = name
        self.type = type
        self.image = image
        self.timesADay = timesADay
        self.volume = volume
        self.url = url
        self.reason = reason
        self.diseaseUrl = diseaseUrl
        
    }
    
    
    
    
    
    
}
