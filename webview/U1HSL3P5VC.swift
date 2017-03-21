//
//  U1HSL3P5VC.swift
//  First Unit
//
//  Created by Diseño on 21/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class U1HSL3P5VC: UIViewController {
    
    var playerController = AVPlayerViewController()
    var player:AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Ubicación del archivo y reproducirlo
        
        let videoString: String? = Bundle.main.path(forResource: "artesanias", ofType: ".mp4")
        if let url = videoString{
            let videoURL = NSURL(fileURLWithPath: url)
            self.player = AVPlayer(url: videoURL as URL)
            self.playerController.player = self.player
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playVideo(_ sender: Any) {
        self.present(self.playerController, animated: true, completion: {
            
            self.playerController.player?.play()
        })
    }
    
    
}
