//
//  CityDetailViewController.swift
//  CitiesList
//
//  Created by Daniel Nascimento on 20/10/20.
//

import UIKit

class CityDetailViewController: BaseViewController {

    var city: City?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    static func getViewControler() -> CityDetailViewController? {
        if let viewDetail = UIStoryboard(name: "CityDetail", bundle: nil).instantiateInitialViewController() as? CityDetailViewController {
            return viewDetail
        }

        return nil
    }

}
