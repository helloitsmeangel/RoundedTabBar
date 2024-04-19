//
//  RoundedTabBarController.swift
//  RoundedTabBar
//
//  Created by Angel on 8/9/22.
//

import UIKit

public class RoundedTabBarController: UITabBarController, UITabBarControllerDelegate {
    
    //View
    var tabBarView: RoundedTabBarView?
    var menuView: UIView?
    
    //TabBar vars
    var lastTabSelected: Int = 0
    var tabBarInfo: TabBarInfo?
    
    public init(tabBarInfo: TabBarInfo) {
        super.init(nibName: nil, bundle: nil)
        self.tabBarInfo = tabBarInfo
        
        if let itemCount = tabBarInfo.tabBarItems?.count, let itemScale = tabBarItemWidthScale[itemCount], let mainColor = tabBarInfo.mainColor, let tintColor = tabBarInfo.tintColor {
            
            let tabBarItemSize = tabBar.bounds.width/itemScale
            let itemsWidth: CGFloat = tabBarItemSize * CGFloat(itemCount)
            let spacingWidth = CGFloat(itemCount - 1) * TabBarSpacing
            let bufferWidth: CGFloat = 20.0
            let tabBarWidth = itemsWidth + spacingWidth + bufferWidth
            let xPosition = (tabBar.bounds.width - (itemsWidth + spacingWidth))/2 - (bufferWidth/2)
            
            tabBarView = RoundedTabBarView(frame: CGRect(x: xPosition, y: tabBar.bounds.minY, width: tabBarWidth, height: tabBar.bounds.height), tabBarItemWidth: tabBarItemSize, mainColor: mainColor, tintColor: tintColor)
            setValue(tabBarView, forKey: "tabBar")
        }
        
        setUpTabBar()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        
        //UITabBarControllerDelegate
        delegate = self
    }
    
    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        moveSelectedTabIndicator(selectedTab: 0)
        animateTabBarSelected(tabBarItem: self.viewControllers![0].tabBarItem)
    }
    
    public override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    // MARK: - Set Up
    func setUpTabBar() {
        guard let tabBarInfo = tabBarInfo, let providedTabBarItems = tabBarInfo.tabBarItems else { return }
        
        var vcList: [UIViewController] = []
        
        for index in 0..<providedTabBarItems.count {
            if let title = providedTabBarItems[index].title, let image = providedTabBarItems[index].image, let controller = providedTabBarItems[index].viewController {
                let centerYPosition = tabBar.frame.height/2 - tabBar.frame.height/4
                controller.tabBarItem = UITabBarItem(title: title, image: UIImage(systemName: image)?.withBaselineOffset(fromBottom: centerYPosition), tag: index)
                vcList.append(controller)
            }
        }
        
        self.viewControllers = vcList
        
        setAlphaOfTitles()
    }
    
    // MARK: - Custom Functions
    func getSelectedTabIndicatorOffset(selectedTab: Int) -> CGFloat {
        //Not the best way since the way to find UITabBarItem's frame could change
        guard let tabBarItemView = self.viewControllers![selectedTab].tabBarItem.value(forKey: "view") as? UIView, let selectedTabIndicatorView = tabBarView?.selectedTabIndicatorView else { return -1 }
        return tabBarItemView.frame.midX - (selectedTabIndicatorView.frame.width/2)
    }
    
    func setAlphaOfTitles() {
        for subview in tabBar.subviews {
            if subview.isKind(of: NSClassFromString("UITabBarButton")!) {
                if let titleLabel = subview.subviews[1] as? UILabel, let tabBarInfo = tabBarInfo, let titleOfFirst = tabBarInfo.tabBarItems?[0].title {
                    if(titleLabel.text != titleOfFirst) {
                        titleLabel.alpha = 0.0
                    }
                }
            }
        }
    }
    
    // MARK: - UITabBarControllerDelegate Functions
    public func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        //Don't animate if selecting the currently selected tab
        if(self.viewControllers![self.selectedIndex] == viewController) {
            return false
        }

        lastTabSelected = self.selectedIndex
        
        if let lastTabItem = self.viewControllers?[self.lastTabSelected].tabBarItem {
            animateTabBarUnselected(tabBarItem: lastTabItem)
        }    
        
        let newSelectedTab = self.viewControllers?.firstIndex(where: { $0 == viewController }) ?? 5
        animateTabBarSelected(tabBarItem: viewController.tabBarItem)
        moveSelectedTabIndicator(selectedTab: newSelectedTab)
        
        return true
    }
}
