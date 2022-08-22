//
//  Label + Extension.swift
//  ChatApp
//
//  Created by Данила on 19.08.2022.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        
        self.text = text
        self.font = font
    }
}
