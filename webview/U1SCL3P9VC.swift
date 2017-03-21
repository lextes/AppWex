//
//  U1SCL3P9VC.swift
//  AnimatedAppear
//
//  Created by Diseño on 14/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class U1SCL3P9VC: UIViewController {
    
    
    
    @IBOutlet weak var kid1: UIImageView!
    @IBOutlet weak var kid2: UIImageView!
    @IBOutlet weak var kid3: UIImageView!
    @IBOutlet weak var kid4: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kid1.alpha = 0
        kid2.alpha = 0
        kid3.alpha = 0
        kid4.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1 , animations: {
            self.kid1.alpha = 1
        }) { (true) in
            UIView.animate(withDuration: 1 , animations: {
                self.kid2.alpha = 1
            }) { (true) in
                UIView.animate(withDuration: 1 , animations: {
                    self.kid3.alpha = 1
                }) { (true) in
                    UIView.animate(withDuration: 1 , animations: {
                        self.kid4.alpha = 1
                    }) { (true) in
                    }
                }
                
            }
        }
    }
}
