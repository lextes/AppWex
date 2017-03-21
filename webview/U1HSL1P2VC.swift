//
//  U1HSL1P2VC.swift
//  First Unit
//
//  Created by Diseño on 21/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit
import AVFoundation

class U1HSL1P2VC: UIViewController {
    
    var buttonA = AVAudioPlayer()
    var stopPlay = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
            buttonA = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "heroiChildren", ofType: "wav")!))
            buttonA.prepareToPlay()
        }
        catch{
            print(error)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    @IBAction func playButtonA(_ sender: AnyObject) {
        buttonA.play()
    }
    
    
    @IBAction func stopPlay(_ sender: AnyObject) {
        
        if buttonA.isPlaying{
            buttonA.stop()
        }

    }
    
}
