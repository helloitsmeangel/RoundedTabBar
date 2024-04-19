//
//  Utilities.swift
//  RoundedTabBar
//
//  Created by Angel on 8/9/22.
//

import Foundation
import UIKit

// Number to divide frame size by to get item width
// [ItemCount : Scale]
let tabBarItemWidthScale: [Int:CGFloat] = [
    2 : 6.0,
    3 : 7.0,
    4 : 7.0,
    5 : 8.0,
]
let TabBarSpacing: CGFloat = 4.0
let tabBarStyleLayerID: String = "tabBarViewStyleLayer"
let selectedTabIndicatorViewSize: CGSize = CGSize(width: 24, height: 4)
let TabBarYOffset: CGFloat = 10.0

//DEFAULT COLORS
var TABBAR_BG_COLOR = UIColor(red: 0.94, green: 0.94, blue: 0.94, alpha: 1.0)
var TABBAR_TINT_COLOR = UIColor(red: 0.18, green: 0.61, blue: 0.89, alpha: 1.0)
var TABBAR_UNSELECTED_TINT_COLOR = UIColor(red: 0.73, green: 0.73, blue: 0.73, alpha: 1.0)

func getLayerWithName(_ name: String, sublayers: [CALayer]?) -> CALayer? {
    var specificSublayer: CALayer?
    
    if let sublayers = sublayers {
        for sublayer in sublayers {
            if sublayer.name == name {
                specificSublayer = sublayer
            }
        }
    }
    
    return specificSublayer
}
