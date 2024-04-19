//
//  MenuItemView.swift
//  RoundedTabBar
//
//  Created by Angel on 8/20/22.
//

import UIKit

class MenuItemView: UIView {
    
    var buttonImage: UIImage?

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        
        let buttonImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        buttonImageView.image = buttonImage ?? UIImage()
        buttonImageView.clipsToBounds = true
        self.addSubview(buttonImageView)
        
        buttonImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        buttonImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        buttonImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        buttonImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
