//
//  UserData.swift
//  UnitTestNetworkLayer
//
//  Created by Mac on 6/30/17.
//  Copyright © 2017 baon. All rights reserved.
//

import Foundation
import ObjectMapper

class UserData: Mappable {
    
    var name: String = ""
    var bio: String = ""
    var email: String = ""
    var numberOfFollowers: Int = 0
    var numberOfFollowings: Int = 0
    
    init() {}
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        name <- map["name"]
        bio <- map["bio"]
        email <- map["email"]
        numberOfFollowers <- map["followers"]
        numberOfFollowings <- map["following"]
    }
}
