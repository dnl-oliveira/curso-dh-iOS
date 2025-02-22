//
//  ViewController.swift
//  20201204-Realm
//
//  Created by Daniel Nascimento on 04/12/20.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myDog = Dog()
        myDog.name = "Rex"
        myDog.age = 1
        print("name of dog: \(myDog.name)")

        // Get the default Realm
        let realm = try! Realm()

        // Query Realm for all dogs less than 2 years old
        let puppies = realm.objects(Dog.self).filter("age < 2")
        puppies.count // => 0 because no dogs have been added to the Realm yet
        
        // Persist your data easily
        try! realm.write {
            realm.add(myDog)
        }

        // Queries are updated in realtime
        puppies.count // => 1
        print("Dog < 2 age: \(puppies.count)")
        // Query and update from any thread
        DispatchQueue(label: "background").async {
            autoreleasepool {
                let realm = try! Realm()
                let theDog = realm.objects(Dog.self).filter("age == 1").first
                try! realm.write {
                    theDog!.age = 3
                    realm.add(theDog!)
                }
            }
        }
        
        let puppies3 = realm.objects(Dog.self).filter("age == 3")
        print("Dog == 3 age: \(puppies3.count)")

    }


}

