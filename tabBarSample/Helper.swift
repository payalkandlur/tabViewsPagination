//
//  Helper.swift
//  tabBarSample
//
//  Created by Payal Kandlur on 08/08/21.
//

import UIKit

func generateRandomData() -> [[UIColor]] {
    let numberOfRows = 20
    let numberOfItemsPerRow = 15

    return (0..<numberOfRows).map { _ in
        return (0..<numberOfItemsPerRow).map { _ in UIColor.randomColor() }
    }
}

extension UIColor {
    
    class func randomColor() -> UIColor {

        let hue = CGFloat(arc4random() % 100) / 100
        let saturation = CGFloat(arc4random() % 100) / 100
        let brightness = CGFloat(arc4random() % 100) / 100

        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1.0)
    }
}
