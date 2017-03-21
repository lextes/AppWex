//
//  U1HSL2P4VC.swift
//  First Unit
//
//  Created by Diseño on 28/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit
import AVFoundation

class U1HSL2P4VC: UIViewController {

    // Selector image 1
  
    @IBOutlet weak var popUP: UIVisualEffectView!
    
    // declare var sound
    var btnSound: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popUP.alpha = 0
        
        //path for sound
        
        let path = Bundle.main.path(forResource: "boing", ofType: "mp3")
        let soundURL = URL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOf: soundURL)
            btnSound.prepareToPlay()
            
        }catch let err as NSError{
            print(err.debugDescription)
        }
        
    }
    
    
    // button send action animated
    
    
    
    @IBAction func sync(_ sender: Any) {

        popUP.transform = CGAffineTransform(scaleX: 0.3, y: 2)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.3 , initialSpringVelocity: 0, options: .allowUserInteraction, animations: {
            
            self.popUP.transform = .identity
        }) {(success) in
        }
        popUP.alpha = 1
        
    }
    
    // func and play sound
    
    
    @IBAction func numberPressed(_ sender: AnyObject) {
        playSound()
    }
    
    func playSound() {
        if btnSound.isPlaying{
            btnSound.stop()
        }
        btnSound.play()
    }
    
    
    // button refresh screen
    
    @IBAction func ok(_ sender: UIButton) {
        popUP.alpha = 0
        
    }


}
