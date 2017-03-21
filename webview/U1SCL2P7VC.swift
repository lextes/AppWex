//
//  U1SCL2P7VC.swift
//  First Unit
//
//  Created by Diseño on 07/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class U1SCL2P7VC: UIViewController {
    
    @IBOutlet var GifView: UIImageView!
    @IBOutlet var GifView2: UIImageView!
    @IBOutlet var GifView3: UIImageView!
    @IBOutlet var GifView4: UIImageView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        GifView.loadGif(name: "shower")
        GifView2.loadGif(name: "brushing")
        GifView3.loadGif(name: "wasHand")
        GifView4.loadGif(name: "nails")

        
        GifView.alpha = 0
        GifView2.alpha = 0
        GifView3.alpha = 0
        GifView4.alpha = 0

    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        UIView.animate(withDuration: 2 , animations: {
            self.GifView.alpha = 1
        }) { (true) in
            UIView.animate(withDuration: 2 , animations: {
                self.GifView2.alpha = 1
            }) { (true) in
                UIView.animate(withDuration: 2 , animations: {
                    self.GifView3.alpha = 1
                }) { (true) in
                    UIView.animate(withDuration: 2 , animations: {
                        self.GifView4.alpha = 1
                    })
                }
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
