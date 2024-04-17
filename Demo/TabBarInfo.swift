//
//  TabBarInfo.swift
//  Demo
//
//  Created by Angel on 8/10/22.
//

import RoundedTabBar
import UIKit

// 5 Tabs
var tabBarInfo: TabBarInfo = TabBarInfo(tabBarItems:
                                            [RoundedTabBarItem(title: "First", image: "house", viewController: FirstViewController()),
                                             RoundedTabBarItem(title: "Second", image: "magnifyingglass", viewController: SecondViewController()),
                                             RoundedTabBarItem(title: "Third", image: "message", viewController: ThirdViewController()),
                                             RoundedTabBarItem(title: "Fourth", image: "person.crop.circle", viewController: FourthViewController()),
                                             RoundedTabBarItem(title: "Fifth", image: "questionmark", viewController: FifthViewController())],
                                        mainColor: UIColor(red: 0.94, green: 0.94, blue: 0.94, alpha: 1.0),
                                        tintColor: UIColor(red: 0.18, green: 0.61, blue: 0.89, alpha: 1.0))

// 4 Tabs
//var tabBarInfo: TabBarInfo = TabBarInfo(tabBarItems:
//                                            [RoundedTabBarItem(title: "First", image: "house", viewController: FirstViewController()),
//                                             RoundedTabBarItem(title: "Second", image: "magnifyingglass", viewController: SecondViewController()),
//                                             RoundedTabBarItem(title: "Third", image: "message", viewController: ThirdViewController()),
//                                             RoundedTabBarItem(title: "Fourth", image: "person.crop.circle", viewController: FourthViewController())],
//                                        mainColor: UIColor(red: 0.94, green: 0.94, blue: 0.94, alpha: 1.0),
//                                        tintColor: UIColor(red: 0.18, green: 0.61, blue: 0.89, alpha: 1.0))
// 3 Tabs
//var tabBarInfo: TabBarInfo = TabBarInfo(tabBarItems:
//                                            [RoundedTabBarItem(title: "First", image: "house", viewController: FirstViewController()),
//                                             RoundedTabBarItem(title: "Second", image: "magnifyingglass", viewController: SecondViewController()),
//                                             RoundedTabBarItem(title: "Third", image: "message", viewController: ThirdViewController())],
//                                        mainColor: UIColor(red: 0.94, green: 0.94, blue: 0.94, alpha: 1.0),
//                                        tintColor: UIColor(red: 0.18, green: 0.61, blue: 0.89, alpha: 1.0))

//2 Tabs
//var tabBarInfo: TabBarInfo = TabBarInfo(tabBarItems:
//                                            [RoundedTabBarItem(title: "First", image: "house", viewController: FirstViewController()),
//                                             RoundedTabBarItem(title: "Second", image: "magnifyingglass", viewController: SecondViewController())],
//                                        mainColor: UIColor(red: 0.94, green: 0.94, blue: 0.94, alpha: 1.0),
//                                        tintColor: UIColor(red: 0.18, green: 0.61, blue: 0.89, alpha: 1.0))



