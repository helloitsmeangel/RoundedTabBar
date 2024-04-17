//
//  RoundedTabBarController+Animations.swift
//  RoundedTabBar
//
//  Created by Angel on 4/17/24.
//

import UIKit

extension RoundedTabBarController {
    func animateTabBarSelected(tabBarItem: UITabBarItem) {
        
        var tabBarViews: [UIView] = []

        for subview in tabBar.subviews {
            if subview.isKind(of: NSClassFromString("UITabBarButton")!) {
                tabBarViews.append(subview)
            }
        }
        
        tabBarViews = tabBarViews.sorted(by: { $0.frame.minX < $1.frame.minX})
        
        if let image = tabBarViews[tabBarItem.tag].subviews.first(where: {$0.isKind(of: NSClassFromString("UITabBarSwappableImageView")!)}) as? UIImageView, let label = tabBarViews[tabBarItem.tag].subviews[1] as? UILabel {
            image.layer.shadowColor = UIColor(red: 0.49, green: 0.87, blue: 1.0, alpha: 1.0).cgColor
            image.layer.shadowOffset = CGSize(width: 0, height: 1)
            image.layer.shadowRadius = 2.0
            image.layer.shadowOpacity = 1.0
            
            let imageAnimation = CABasicAnimation(keyPath: "position")
            imageAnimation.duration = 0.25
            imageAnimation.fromValue = NSValue(cgPoint: CGPoint(x: image.center.x, y: image.center.y))
            imageAnimation.toValue = NSValue(cgPoint: CGPoint(x: image.center.x, y: image.center.y - 5))
            imageAnimation.isRemovedOnCompletion = false
            imageAnimation.fillMode = .forwards
            image.layer.add(imageAnimation, forKey: "position")
            
            let labelAnimation = CABasicAnimation(keyPath: "position")
            labelAnimation.duration = 0.25
            labelAnimation.fromValue = NSValue(cgPoint: CGPoint(x: label.center.x, y: label.center.y - 10))
            labelAnimation.toValue = NSValue(cgPoint: CGPoint(x: label.center.x, y: label.center.y - 2))
            labelAnimation.isRemovedOnCompletion = false
            labelAnimation.fillMode = .forwards
            label.layer.add(labelAnimation, forKey: "position")
            
            UIView.animate(withDuration: 0.25, animations: {
                label.alpha = 1.0
            })
        }
                
    }
    
    func animateTabBarUnselected(tabBarItem: UITabBarItem) {
        var tabBarViews: [UIView] = []

        for subview in tabBar.subviews {
            if subview.isKind(of: NSClassFromString("UITabBarButton")!) {
                tabBarViews.append(subview)
            }
        }
        
        tabBarViews = tabBarViews.sorted(by: { $0.frame.minX < $1.frame.minX})
        
        if let image = tabBarViews[tabBarItem.tag].subviews.first as? UIImageView, let label = tabBarViews[tabBarItem.tag].subviews[1] as? UILabel {
            image.layer.shadowColor = nil
            image.layer.shadowRadius = 0.0
            image.layer.shadowOpacity = 0.0
            
            let animation = CABasicAnimation(keyPath: "position")
            animation.duration = 0.25
            animation.fromValue = NSValue(cgPoint: CGPoint(x: image.center.x, y: image.center.y - 5))
            animation.toValue = NSValue(cgPoint: CGPoint(x: image.center.x, y: image.center.y))
            animation.isRemovedOnCompletion = false
            animation.fillMode = .forwards
            image.layer.add(animation, forKey: "position")
            
            let labelAnimation = CABasicAnimation(keyPath: "position")
            labelAnimation.duration = 0.25
            labelAnimation.fromValue = NSValue(cgPoint: CGPoint(x: label.center.x, y: label.center.y - 2))
            labelAnimation.toValue = NSValue(cgPoint: CGPoint(x: label.center.x, y: label.center.y - 10))
            labelAnimation.isRemovedOnCompletion = false
            labelAnimation.fillMode = .forwards
            label.layer.add(labelAnimation, forKey: "position")
            
            UIView.animate(withDuration: 0.25, animations: {
                label.alpha = 0.0
            })
        }
    }
    
    func moveSelectedTabIndicator(selectedTab: Int) {
        guard let selectedTabIndicatorView = tabBarView?.selectedTabIndicatorView else { return }
        
        let indicatorOffset = getSelectedTabIndicatorOffset(selectedTab: selectedTab)

        UIView.animate(withDuration: 0.2, animations: {
            selectedTabIndicatorView.frame.origin = CGPoint(x: indicatorOffset, y: -(selectedTabIndicatorView.frame.height/2))
        }, completion: nil)
    }
}
