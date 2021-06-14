//
//  UIViewController+Extension.swift
//  Gym Purple
//
//  Created by Gabriel on 13/06/21.
//


import UIKit

extension UIViewController {
    
    static var identifier: String {
        return  String(describing: self)
        
    }
    
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return
            storyboard.instantiateViewController(identifier: identifier) as! Self
    }
}