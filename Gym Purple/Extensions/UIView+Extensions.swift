//
//  UIView+Extensions.swift
//  Gym Purple
//
//  Created by Gabriel on 11/06/21.
//

import UIKit

extension UIView {
    @IBInspectable  var cornerRadius: CGFloat {
        get { return self.cornerRadius }
         set {
             self.layer.cornerRadius = newValue
         }
     }
    
    @IBInspectable  var borderRadius: CGFloat{
        get { return self.borderRadius }
        set {
            self.layer.borderWidth = newValue
    }
    }
    
    
       @IBInspectable
       var borderColor: UIColor? {
           get {
               if let color = layer.borderColor {
                   return UIColor(cgColor: color)
               }
               return nil
           }
           set {
               if let color = newValue {
                   layer.borderColor = color.cgColor
               } else {
                   layer.borderColor = nil
               }
           }
       }

}

