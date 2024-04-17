//
//  SelectedTabIndicatorView.swift
//  RoundedTabBar
//
//  Created by Angel on 12/14/22.
//

import UIKit

internal class SelectedTabIndicatorView: UIView {

    init(frame: CGRect, color: UIColor) {
        super.init(frame: frame)
        
        self.backgroundColor = tintColor
        self.layer.cornerRadius = frame.height/2
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
