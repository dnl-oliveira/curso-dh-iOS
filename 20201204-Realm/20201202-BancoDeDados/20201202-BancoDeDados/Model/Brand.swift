//
//  Brand.swift
//  20201202-BancoDeDados
//
//  Created by Daniel Nascimento on 02/12/20.
//

import Foundation
import RealmSwift

class Brand: Object {
    @objc dynamic var name: String!
    @objc dynamic var favorite: String!
}
