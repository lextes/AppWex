//
//  U1HSL3P6VC.swift
//  First Unit
//
//  Created by Diseño on 21/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class U1HSL3P6VC: UIViewController {
    
    var but1 = AVAudioPlayer()
    var but2 = AVAudioPlayer()
    var but3 = AVAudioPlayer()
    var but4 = AVAudioPlayer()
    var but5 = AVAudioPlayer()


    var playerController = AVPlayerViewController()
    var player:AVPlayer?
    
    var stopPlay = AVAudioPlayer()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
            but1 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "typewriter", ofType: "mp3")!))
            but1.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        do{
            but2 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "camera", ofType: "mp3")!))
            but2.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        do{
            but3 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "phone", ofType: "mp3")!))
            but3.prepareToPlay()
        }
        catch{
            print(error)
        }
        do{
            but4 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "radio", ofType: "mp3")!))
            but4.prepareToPlay()
        }
        catch{
            print(error)
        }
        do{
            but5 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "proyector", ofType: "mp3")!))
            but5.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        
        let videoString: String? = Bundle.main.path(forResource: "tv", ofType: ".mp4")
        if let url = videoString{
            let videoURL = NSURL(fileURLWithPath: url)
            self.player = AVPlayer(url: videoURL as URL)
            self.playerController.player = self.player
        }
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    @IBAction func playButon1(_ sender: AnyObject) {
        but1.play()
        if but1.isPlaying{
            but2.stop()
            but3.stop()
            but4.stop()
            but5.stop()
        }
    }
    
    
    @IBAction func playButon2(_ sender: AnyObject) {
        but2.play()
        if but2.isPlaying{
            but1.stop()
            but3.stop()
            but4.stop()
            but5.stop()
        }
    }
    
    @IBAction func playButon3(_ sender: AnyObject) {
        but3.play()
        if but3.isPlaying{
            but1.stop()
            but2.stop()
            but4.stop()
            but5.stop()
        }
    }
    
    @IBAction func playButon4(_ sender: AnyObject) {
        but4.play()
        if but4.isPlaying{
            but1.stop()
            but2.stop()
            but3.stop()
            but5.stop()
        }
    }
    
    @IBAction func playVideo(_ sender: AnyObject) {
    
        self.present(self.playerController, animated: true, completion: {
            
            self.playerController.player?.play()
        })
            but1.stop()
            but2.stop()
            but3.stop()
            but4.stop()
            but5.stop()
        }
    
    @IBAction func playButon5(_ sender: AnyObject) {
        but5.play()
        if but5.isPlaying{
            but1.stop()
            but2.stop()
            but3.stop()
            but4.stop()
        }
    }
    
    @IBAction func StopPlay(_ sender: AnyObject) {
        
        if but1.isPlaying{
            but1.stop()
        }
        
        if but2.isPlaying {
            but2.stop()
        }
        
        if but3.isPlaying{
            but3.stop()
        }
        if but4.isPlaying{
            but4.stop()
        }
        if but5.isPlaying{
            but5.stop()
        }
        
    }
    
}
