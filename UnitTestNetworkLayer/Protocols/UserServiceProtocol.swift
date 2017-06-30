//
//  UserServiceProtocol.swift
//  UnitTestNetworkLayer
//
//  Created by Mac on 6/30/17.
//  Copyright © 2017 baon. All rights reserved.
//

import Foundation

protocol UserServiceProtocol {
    func getUserWithName(username: String, completion: @escaping (_ result: UserData?, _ error: NSError?) -> Void)
}
