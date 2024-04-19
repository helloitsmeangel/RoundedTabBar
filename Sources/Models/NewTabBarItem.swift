//
//  RoundedTabBarItem.swift
//  RoundedTabBar
//
//  Created by Angel on 8/10/22.
//

import Foundation
import UIKit

public class RoundedTabBarItem {
    var title: String?
    var image: String?
    let viewController: UIViewController?
    
    public init(title: String, image: String, viewController: UIViewController) {
        self.title = title
        self.image = image
        self.viewController = viewController
    }
}
