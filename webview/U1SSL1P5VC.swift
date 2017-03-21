//
//  U1SSL1P5VC.swift
//  WebView
//
//  Created by Diseño on 16/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

//
//  AnimatedAppearViewController.swift
//  AnimatedAppear
//
//  Created by Diseño on 14/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit
import AVFoundation


class U1SSL1P5VC: UIViewController {
    
    

    @IBOutlet weak var treeA: UIImageView!
    @IBOutlet weak var treeB: UIImageView!
    @IBOutlet weak var treeC: UIImageView!
    @IBOutlet weak var treeD: UIImageView!
    @IBOutlet weak var treeE: UIImageView!
    @IBOutlet weak var treeF: UIImageView!
    @IBOutlet weak var treeG: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        treeA.alpha = 0
        treeB.alpha = 0
        treeC.alpha = 0
        treeD.alpha = 0
        treeE.alpha = 0
        treeF.alpha = 0
        treeG.alpha = 0

    }
   

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1 , animations: {
            self.treeA.alpha = 1
        }) { (true) in
            UIView.animate(withDuration: 1 , animations: {
                self.treeB.alpha = 1
            }) { (true) in
                UIView.animate(withDuration: 1 , animations: {
                    self.treeC.alpha = 1
                }) { (true) in
                    UIView.animate(withDuration: 1 , animations: {
                        self.treeD.alpha = 1
                    }) { (true) in
                        UIView.animate(withDuration: 1 , animations: {
                            self.treeE.alpha = 1
                        }) { (true) in
                            UIView.animate(withDuration: 1 , animations: {
                                self.treeF.alpha = 1
                            }) { (true) in
                                UIView.animate(withDuration: 1 , animations: {
                                    self.treeG.alpha = 1
                                }) { (true) in
                                    }
                                }
                
                            }
                        }
                    }
                }
            }
        }
}
