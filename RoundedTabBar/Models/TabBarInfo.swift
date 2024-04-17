//
//  TabBarInfo.swift
//  RoundedTabBar
//
//  Created by Angel on 8/10/22.
//

import Foundation
import UIKit

public class TabBarInfo {
    var tabBarItems: [RoundedTabBarItem]?
    var mainColor: UIColor?
    var tintColor: UIColor?
    
    public init(tabBarItems: [RoundedTabBarItem], mainColor: UIColor, tintColor: UIColor) {
        self.tabBarItems = tabBarItems
        self.mainColor = mainColor
        self.tintColor = tintColor
    }
}
