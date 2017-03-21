//
//  U1HSL1P1VC.swift
//  First Unit
//
//  Created by Diseño on 28/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit
import AVFoundation

class U1HSL1P1VC: UIViewController {
    
    var but1 = AVAudioPlayer()
    var but2 = AVAudioPlayer()
    var but3 = AVAudioPlayer()
    var but4 = AVAudioPlayer()
    var but5 = AVAudioPlayer()
    var but6 = AVAudioPlayer()
    
    
    var stopPlay = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
            but1 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "vicenteSuarez", ofType: "m4a")!))
            but1.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        do{
            but2 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "agustinMelgar", ofType: "m4a")!))
            but2.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        do{
            but3 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "juanEscutia", ofType: "m4a")!))
            but3.prepareToPlay()
        }
        catch{
            print(error)
        }
        do{
            but4 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "franciscoMarquez", ofType: "m4a")!))
            but4.prepareToPlay()
        }
        catch{
            print(error)
        }
        do{
            but5 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "fernandoMontes", ofType: "m4a")!))
            but5.prepareToPlay()
        }
        catch{
            print(error)
        }
        do{
            but6 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "juanBarrera", ofType: "m4a")!))
            but6.prepareToPlay()
        }
        catch{
            print(error)
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
            but6.stop()
        }
    }
    
    
    @IBAction func playButon2(_ sender: AnyObject) {
        but2.play()
        if but2.isPlaying{
            but1.stop()
            but3.stop()
            but4.stop()
            but5.stop()
            but6.stop()
        }
    }
    
    @IBAction func playButon3(_ sender: AnyObject) {
        but3.play()
        if but3.isPlaying{
            but1.stop()
            but2.stop()
            but4.stop()
            but5.stop()
            but6.stop()
        }
    }
    
    @IBAction func playButon4(_ sender: AnyObject) {
        but4.play()
        if but4.isPlaying{
            but1.stop()
            but2.stop()
            but3.stop()
            but5.stop()
            but6.stop()
        }
    }
    
    @IBAction func playButon5(_ sender: AnyObject) {
        but5.play()
        if but5.isPlaying{
            but1.stop()
            but2.stop()
            but3.stop()
            but4.stop()
            but6.stop()
        }
    }
    
    @IBAction func playButon6(_ sender: AnyObject) {
        but6.play()
        if but5.isPlaying{
            but1.stop()
            but2.stop()
            but3.stop()
            but4.stop()
            but5.stop()
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
        if but6.isPlaying{
            but6.stop()
        }
    }
    
}
