//
//  RoundedTabBarView.swift
//  RoundedTabBar
//
//  Created by Angel on 8/9/22.
//


import UIKit

internal class RoundedTabBarView: UITabBar {
    
    var selectedTabIndicatorView: SelectedTabIndicatorView?
    
    init(frame: CGRect, tabBarItemWidth: CGFloat, mainColor: UIColor, tintColor: UIColor) {
        super.init(frame: frame)

        self.itemWidth = tabBarItemWidth
        self.itemSpacing = TabBarSpacing
        self.itemPositioning = .centered
        
        
        // All styling should be done here
        styleTabBar(mainColor: mainColor, tintColor: tintColor)
        
        //blue bar on top of currently selected tab
        createSelectedTabIndicatorView(color: tintColor)
    }
    
    @objc func styleTabBar(mainColor: UIColor, tintColor: UIColor) {
        // Find existing style layer, if one doesn't exist then create one
        let styleLayer = getLayerWithName(tabBarStyleLayerID, sublayers: self.layer.sublayers)
        
        if let styleLayer = styleLayer {
            styleLayer.backgroundColor = mainColor.cgColor
        } else {
            // Tab Bar Background Color
            let styleLayer = getStyleLayer(color: mainColor, frame: self.frame, id: tabBarStyleLayerID)
            self.layer.addSublayer(styleLayer)
        }
        
        // Tab bar Item Colors
        self.unselectedItemTintColor = TABBAR_UNSELECTED_TINT_COLOR
        self.tintColor = tintColor
    }
    
    func getStyleLayer(color: UIColor, frame: CGRect, id: String) -> CALayer {
        let layer = CALayer()
        
        // Color
        layer.backgroundColor = color.cgColor
        layer.borderColor = color.cgColor
        
        // Shadow
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOffset = .zero
        layer.shadowRadius = 4
        layer.shadowOpacity = 0.7
        
        // General
        layer.cornerRadius = frame.height/2
        layer.name = id
        layer.frame = frame
        
        return layer
    }
    
    func createSelectedTabIndicatorView(color: UIColor) {
        selectedTabIndicatorView = SelectedTabIndicatorView(frame: CGRect(x: 0, y: 0, width: selectedTabIndicatorViewSize.width, height: selectedTabIndicatorViewSize.height), color: color)
        self.addSubview(selectedTabIndicatorView!)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
