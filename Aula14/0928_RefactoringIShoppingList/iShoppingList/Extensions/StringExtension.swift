//
//  StringExtension.swift
//  iShoppingList
//
//  Created by Daniel Nascimento on 17/09/20.
//  Copyright © 2020 Daniel Nascimento. All rights reserved.
//

import Foundation
extension String {
    func removeSpecialCharacters () -> String {
        return self.folding(options: .diacriticInsensitive, locale: .current)
    }
}
