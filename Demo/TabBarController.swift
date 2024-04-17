//
//  TabBarController.swift
//  Demo
//
//  Created by Angel on 8/9/22.
//

import UIKit
import RoundedTabBar

class Test: UITabBarController {
    
    //Views
    //var menuView: UIView? - Future feature
    
    var titles = ["Delivery", "Storage", "", "Help", "Settings"]
    
    override func viewDidLoad() {
        
        //Setting view for tab bar
        //tabBarView = TabBarView(frame: CGRect(x: 20, y: tabBar.bounds.minY - 5, width: tabBar.bounds.width - 40, height: tabBar.bounds.height + 10))
        //tabBarView?.tabBarViewDelegate = self
        
        
        //setValue(tabBarView, forKey: "tabBar")
        
        let controller1 = UIViewController()
        controller1.view.backgroundColor = UIColor(red: 0.93, green: 0.98, blue: 1.0, alpha: 1.0)
        controller1.tabBarItem = UITabBarItem(title: "Test1", image: UIImage(systemName: "clock")?.withBaselineOffset(fromBottom: 10), tag: 0)
        //controller1.tabBarItem.setTitleTextAttributes([.foregroundColor:UIColor.black, .font:UIFont(name: "SourceSansPro-Bold", size: 11)!], for: .normal)
        controller1.tabBarItem.title = titles[0]
        let nav1 = UINavigationController(rootViewController: controller1)
        
        let controller2 = UIViewController()
        controller2.view.backgroundColor = .black
        controller2.tabBarItem = UITabBarItem(title: "a", image: UIImage(systemName: "shippingbox")?.withBaselineOffset(fromBottom: 10), tag: 1)
        //controller2.tabBarItem.setTitleTextAttributes([.foregroundColor:UIColor.black, .font:UIFont(name: "SourceSansPro-Bold", size: 11)!], for: .normal)
        controller2.tabBarItem.title = titles[1]
        let nav2 = UINavigationController(rootViewController: controller2)
        
        //placeholder tab bar item
        let controller3 = UIViewController()
        controller3.view.backgroundColor = .red
        controller3.tabBarItem = UITabBarItem(title: "", image: UIImage(), tag: 2)
        controller3.tabBarItem.title = titles[2]
        controller3.tabBarItem.isEnabled = false
        let nav3 = UINavigationController(rootViewController: controller3)
        
        let controller4 = UIViewController()
        controller4.view.backgroundColor = .purple
        controller4.tabBarItem = UITabBarItem(title: "s", image: UIImage(systemName: "message")?.withBaselineOffset(fromBottom: 10), tag: 3)
        //controller4.tabBarItem.setTitleTextAttributes([.foregroundColor:UIColor.black, .font:UIFont(name: "SourceSansPro-Bold", size: 11)!], for: .normal)
        controller4.tabBarItem.title = titles[3]
        let nav4 = UINavigationController(rootViewController: controller4)
        
        let controller5 = UIViewController()
        controller5.view.backgroundColor = .orange
        controller5.tabBarItem = UITabBarItem(title: "d", image: UIImage(systemName: "person.crop.circle")?.withBaselineOffset(fromBottom: 10), tag: 4)
        //controller5.tabBarItem.setTitleTextAttributes([.foregroundColor:UIColor.black, .font:UIFont(name: "SourceSansPro-Bold", size: 11)!], for: .normal)
        controller5.tabBarItem.title = titles[4]
        let nav5 = UINavigationController(rootViewController: controller5)
        
        viewControllers = [nav1, nav2, nav3, nav4, nav5]
        
    }
}
