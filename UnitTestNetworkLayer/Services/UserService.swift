//
//  UserService.swift
//  UnitTestNetworkLayer
//
//  Created by Mac on 6/30/17.
//  Copyright © 2017 baon. All rights reserved.
//

import Foundation

class UserService: UserServiceProtocol {
    let api = APIService()
    
    func getUserWithName(username: String, completion: @escaping (_ result: UserData?, _ error: NSError?) -> Void) {
        let input = APIInputBase(url: "https://api.github.com/users/trentm")
        api.requestUserWithUsername(input: input, completion: { (result) in
            switch result {
            case .success(let user):
                completion(user, nil)
            case .failure(let error):
                completion(nil, error)
            }
        })
    }
}
