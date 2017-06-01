//
//  Profile.swift
//  Fetch
//
//  Created by Kristy Tan on 5/17/17.
//  Copyright © 2017 Kristy Tan. All rights reserved.
//

import Foundation
class Profile {
    var name: String
    var age: String
    var season: String
    var style: String
    var arrInd: Int
    var subInd: Int
    init(name:String, age:String, season:String, style: String, arrInd: Int, subInd: Int){
        self.name = name
        self.age = age
        self.season = season
        self.style = style
        self.subInd = subInd
        self.arrInd = arrInd
    }
    
}
