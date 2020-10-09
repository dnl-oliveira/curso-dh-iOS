//
//  ViewControllerDetail.swift
//  10_07_desafioSegmentedControl
//
//  Created by Daniel Oliveira on 07/10/20.
//  Copyright © 2020 Daniel Oliveira. All rights reserved.
//

import UIKit

class ViewControllerDetail: UIViewController {
    
    var type: Person?
    
    @IBOutlet weak var labelName: UILabel!
    @IBAction func actionButtonClose(_ sender: Any) {
        
        switch type?.role {
        case Role.programmer:
            navigationController?.popViewController(animated: true)
        case Role.person:
            dismiss(animated: true, completion: nil)
        default:
            break
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = ""
        labelName.text = type!.name
        
    }

}
