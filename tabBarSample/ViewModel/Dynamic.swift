//
//  Dynamic.swift
//  tabBarSample
//
//  Created by Payal Kandlur on 11/08/21.
//

import Foundation

class Dynamic<T> {

    typealias Listener = (T) -> Void
    var listener : Listener?
    
    func bind(listener: Listener?) {
        self.listener = listener
    }
  
    //when the value changes set the value parameter
    var value: T {
        didSet{
            listener?(value)
        }
    }
    
    //initializer for value
    init(_ v: T) {
        value = v
    }

}
