//
//  U1SSL2P7VC.swift
//  First Unit
//
//  Created by Diseño on 23/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit
import AVFoundation

class U1SSL2P7VC: UIViewController {

   
   
    @IBOutlet weak var popUp: UIImageView!
 
    var originalCenter: CGPoint!
    var btnSound2: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        popUp.alpha = 0
        originalCenter = popUp.center
        
        let path = Bundle.main.path(forResource: "up", ofType: "mp3")
        let soundURL = URL(fileURLWithPath: path!)
        
        do {
            try btnSound2 = AVAudioPlayer(contentsOf: soundURL)
            btnSound2.prepareToPlay()
            
        }catch let err as NSError{
            print(err.debugDescription)
        }
        
    }
    
   
   
    @IBAction func sync(_ sender: Any) {
        
        popUp.layer.anchorPoint = CGPoint(x: 0.5, y: 0)
        popUp.center.y = popUp.center.y - (popUp.frame.height / 2)
        popUp.transform = CGAffineTransform(rotationAngle: 1)
        
        UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 0.3 , initialSpringVelocity: 0, options: .allowUserInteraction, animations: {
            
            self.popUp.transform = .identity
        }) {(success) in
            
            self.popUp.center = self.originalCenter
            self.popUp.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            
        }
        popUp.alpha = 1
        }
    
    @IBAction func numberPressed(sender: UIButton){
        playSound()
    }
    
    func playSound() {
        if btnSound2.isPlaying{
            btnSound2.stop()
        }
        btnSound2.play()
    }
    
}
