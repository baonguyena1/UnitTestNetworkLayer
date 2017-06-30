//
//  APIServiceProtocol.swift
//  UnitTestNetworkLayer
//
//  Created by Mac on 6/30/17.
//  Copyright © 2017 baon. All rights reserved.
//

import Foundation

protocol APIServiceProtocol {
    func requestUserWithUsername(input: APIInputBase, completion: @escaping (_ result: UserDataResult) -> Void)
}
