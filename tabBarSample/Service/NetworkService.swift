//
//  NetworkService.swift
//  tabBarSample
//
//  Created by Payal Kandlur on 11/08/21.
//

import UIKit

class NetworkService {
    
    func get(_ url: String, callback: @escaping(_ result: Data?, _ error: Error?) -> Void) {
        if let components = URLComponents(string: url) {
            if let url2 = components.url {
                let requests = URLRequest(url: url2)
                let task = URLSession.shared.dataTask(with: requests) { (data, response, error) in
                    if error == nil {
                        callback(data, nil)
                    } else {
//                        if let err = error as NSError? {
//                            let error = ServerError(err: err)
                            callback(nil, error)
//                        }
                    }
                }
                
            }
        }
    }
}
