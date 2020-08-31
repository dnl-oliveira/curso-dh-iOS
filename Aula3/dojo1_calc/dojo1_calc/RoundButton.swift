//
//  RoundButton.swift
//  dojo1_calc
//
//  Created by Daniel Nascimento on 31/08/20.
//  Copyright © 2020 Daniel Nascimento. All rights reserved.
//

import UIKit

class RoundButton: UIButton {

   @IBInspectable var cornerRadius: CGFloat = 0{
       didSet{
       self.layer.cornerRadius = cornerRadius
       }
   }

   @IBInspectable var borderWidth: CGFloat = 0{
       didSet{
           self.layer.borderWidth = borderWidth
       }
   }

   @IBInspectable var borderColor: UIColor = UIColor.clear{
       didSet{
           self.layer.borderColor = borderColor.cgColor
       }
   }
    
}
