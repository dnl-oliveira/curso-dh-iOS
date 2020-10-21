//
//  ViewController.swift
//  ExercicioFrames
//
//  Created by Daniel Nascimento on 21/10/20.
//

import UIKit

class ViewController: UIViewController {
    var countViews: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
    }
    func addViews() {
        
        var myView = UIView()
        //let screenScale = UIScreen.main.scale
        let screenBounds = UIScreen.main.bounds
        let screenSize = screenBounds.size.height
        
        if screenSize > CGFloat(countViews * 50) {
            if(countViews == 0) {
                myView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
                myView.backgroundColor = .random()
                countViews += 1
            }
            else {
                let y = countViews * 50
                myView = UIView(frame: CGRect(x: 0, y: y, width: 50, height: 50))
                myView.backgroundColor = .random()
                countViews += 1
            }
            
        }
        else {
            myView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            myView.backgroundColor = .random()
            myView.center = view.center
            UIView.animate(withDuration: 3) {
                myView.frame = self.view.frame
            } completion: { _ in
                self.countViews = 0
                self.view.subviews.forEach({ $0.removeFromSuperview() })
                self.addViews()
            }
        }
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        tap.numberOfTouchesRequired = 1
        tap.numberOfTapsRequired = 1
        myView.addGestureRecognizer(tap)
        view.addSubview(myView)
        
    }
    
    @objc func handleTap() {
       addViews()
    }
}
extension UIColor {
    static func random() -> UIColor {
        return UIColor(
           red:   .random(),
           green: .random(),
           blue:  .random(),
           alpha: 1.0
        )
    }
}
extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
