//
//  U1SSL4P15VC.swift
//  First Unit
//
//  Created by Diseño on 07/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class U1SSL4P15VC: UIViewController {
    
    @IBOutlet var GifView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        GifView.loadGif(name: "congo")
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        UIView.animate(withDuration: 6 , animations: {
            self.GifView.alpha = 1
        }) { (true) in
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
