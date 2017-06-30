//
//  APIInputBase.swift
//  UnitTestNetworkLayer
//
//  Created by Mac on 6/30/17.
//  Copyright © 2017 baon. All rights reserved.
//

import Foundation
import Alamofire

class APIInputBase: NSObject {
    
    var url = ""
    var requestType = Alamofire.HTTPMethod.get
    var body: [String: AnyObject]?
    var headers = ["Content-Type": "application/json; charset=utf-8"]
    
    var encoding: ParameterEncoding {
        switch requestType {
        case .get:
            return URLEncoding()
        default:
            return JSONEncoding()
        }
    }
    
    init(url: String) {
        self.url = url
    }
    
    func setup(url: String, requestType: Alamofire.HTTPMethod) {
        self.url = url
        self.requestType = requestType
    }
}
