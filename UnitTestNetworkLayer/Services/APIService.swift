//
//  APIService.swift
//  UnitTestNetworkLayer
//
//  Created by Mac on 6/30/17.
//  Copyright © 2017 baon. All rights reserved.
//

import Foundation
import Alamofire

class APIService: APIServiceProtocol {
    
    private func request(input: APIInputBase, completion: @escaping (_ value: AnyObject?, _ error: NSError?) -> Void) {
        func request() {
            print("Request: ", input.url)
            let url = input.url
            Alamofire.request(url, method: input.requestType, parameters: input.body, encoding: input.encoding)
                .responseJSON (completionHandler: {(response) in
                    switch response.result {
                    case .success(let value):
                        completion(value as AnyObject, nil)
                    case .failure(let error):
                        completion(nil, error as NSError?)
                    }
                })
        }
        
        request()
    }
    
    func requestUserWithUsername(input: APIInputBase, completion: @escaping (_ result: UserDataResult) -> Void) {
        request(input: input, completion: {(value, error) -> Void in
            if let value = value as? [String: AnyObject], let userData = UserData(JSON: value) {
                completion(UserDataResult.success(user: userData))
            }
            else if let error = error {
                completion(UserDataResult.failure(error: error))
            }
            else {
                completion(UserDataResult.failure(error: nil))
            }
        })
    }
}
