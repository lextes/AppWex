//
//  U1SSL4P14VC.swift
//  First Unit
//
//  Created by Diseño on 27/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class U1SSL4P14VC: UIViewController {

    @IBOutlet weak var Text: UITextView!
    
    @IBOutlet weak var Text2: UITextView!
    
    @IBOutlet weak var Text3: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Text.text = ""
        Text.font = UIFont.boldSystemFont(ofSize: 30)
        
        Text2.text = ""
        Text2.font = UIFont.boldSystemFont(ofSize: 30)
    
        Text3.text = ""
        Text3.font = UIFont.boldSystemFont(ofSize: 30)
    }

}
