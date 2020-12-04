//
//  Dog.swift
//  20201204-Realm
//
//  Created by Daniel Nascimento on 04/12/20.
//

import Foundation
import RealmSwift

class Dog: Object {
    @objc dynamic var name = ""
    @objc dynamic var age = 0
}
