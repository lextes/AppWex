//
//  U1GGL1P1VC.swift
//  First Unit
//
//  Created by Diseño on 02/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class U1GGL1P1VC: UIViewController {

    
    @IBOutlet weak var kid1: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kid1.alpha = 0
}
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 3 , animations: {
            self.kid1.alpha = 1
        }) { (true) in
            
        }
    }
}
