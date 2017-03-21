//
//  U1SSL3P10VC.swift
//  First Unit
//
//  Created by Diseño on 21/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//
//  Modified by Alexander Rodriguez Torres on 09/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
import UIKit
import AVFoundation
import AVKit

class U1SSL3P10VC: UIViewController {
    
    @IBOutlet weak var viewButtons: UIView!
    var playerController = AVPlayerViewController()
    var player:AVPlayer?
    
    var reproducido = false
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.viewButtons.isHidden = true
        let videoString: String? = Bundle.main.path(forResource: "trans", ofType: ".mp4")
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
        if (reproducido == false){
            self.present(self.playerController, animated: true, completion: {
                self.playerController.player?.play()
                self.reproducido = true
                self.viewButtons.isHidden = false
            })
        }
        
    }

    @IBAction func seleccionar1(_ sender: Any) {
        self.viewButtons.isHidden = true
        reproducido = false
    }
    @IBAction func seleccionar2(_ sender: Any) {
        self.viewButtons.isHidden = true
        reproducido = false
    }
    @IBAction func seleccionar3(_ sender: Any) {
        self.viewButtons.isHidden = true
        reproducido = false
    }
    @IBAction func seleccionar4(_ sender: Any) {
        self.viewButtons.isHidden = true
        reproducido = false
    }
    @IBAction func seleccionar5(_ sender: Any) {
        self.viewButtons.isHidden = true
        reproducido = false
    }
}
