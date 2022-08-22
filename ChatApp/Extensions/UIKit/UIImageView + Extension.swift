//
//  UIImageView + Extension.swift
//  ChatApp
//
//  Created by Данила on 19.08.2022.
//

import UIKit

extension UIImageView{
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = contentMode
    }
}
