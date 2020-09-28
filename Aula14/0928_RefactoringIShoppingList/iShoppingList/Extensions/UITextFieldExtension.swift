//
//  UITextField.swift
//  iShoppingList
//
//  Created by Daniel Nascimento on 17/09/20.
//  Copyright © 2020 Daniel Nascimento. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    func isEmpty() -> Bool {
        if text == nil || text!.isEmpty {
            return true
        }
        
        return false
    }
}
