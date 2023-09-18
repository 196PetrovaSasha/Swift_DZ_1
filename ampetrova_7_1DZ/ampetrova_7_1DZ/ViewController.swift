//
//  ViewController.swift
//  ampetrova_7_1DZ
//
//  Created by Aleksandra Petrova on 18.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var view1: UIView!
    
    @IBOutlet var view2: UIView!
    @IBOutlet var view3: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func pressButton(_ sender: Any) {
        var set = Set<UIColor>()
        while set.count < 3{
            set.insert(
                UIColor(
                    red: .random(in: 0...1),
                    green: .random(in: 0...1),
                    blue: .random(in: 0...1),
                    alpha: 1
                )
            )
        }
        UIView.animate(withDuration: 3.49, animations: {
            self.view1.backgroundColor = set.popFirst()
            self.view1.layer.cornerRadius = .random(in: 0...25)
        })
        UIView.animate(withDuration: 3.49, animations: {
            self.view2.backgroundColor = set.popFirst()
            self.view2.layer.cornerRadius = .random(in: 0...25)
        })
        UIView.animate(withDuration: 3.49, animations: {
            self.view3.backgroundColor = set.popFirst()
            self.view3.layer.cornerRadius = .random(in: 0...25)
        })
    }
}

