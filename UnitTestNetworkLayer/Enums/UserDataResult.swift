//
//  UserDataResult.swift
//  UnitTestNetworkLayer
//
//  Created by Mac on 6/30/17.
//  Copyright © 2017 baon. All rights reserved.
//

import Foundation

enum UserDataResult {
    case success(user: UserData)
    case failure(error: NSError?)
}
