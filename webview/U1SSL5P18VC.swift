//
//  U1SSL5P18VC.swift
//  First Unit
//
//  Created by Alexander Rodriguez Torres on 09/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//
import UIKit
import ImageSlideshow

class U1SSL5P18VC: UIViewController {
    
    @IBOutlet weak var imgFondo: UIImageView!
    @IBOutlet weak var slideImagnes: ImageSlideshow!
    let localSource = [ImageSource(imageString: "Image1")!, ImageSource(imageString: "Image2")!, ImageSource(imageString: "Image3")!, ImageSource(imageString: "Image4")!, ImageSource(imageString: "Image5")!, ImageSource(imageString: "Image6")!]
    override func viewDidLoad() {
        super.viewDidLoad()
        slideImagnes.isHidden = true
        
        let recognizerFondo = UITapGestureRecognizer(target: self, action: #selector(U1SSL5P18VC.didTapFondo))
        imgFondo.addGestureRecognizer(recognizerFondo)
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    

    @IBAction func showSlide(_ sender: Any) {
        slideImagnes.isHidden = false
        slideImagnes.setImageInputs(localSource)
        
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(U1SSL5P18VC.didTap))
        slideImagnes.addGestureRecognizer(recognizer)
        
        
        slideImagnes.backgroundColor = UIColor.white
        slideImagnes.slideshowInterval = 5.0
        slideImagnes.pageControlPosition = PageControlPosition.underScrollView
        slideImagnes.pageControl.currentPageIndicatorTintColor = UIColor.lightGray
        slideImagnes.pageControl.pageIndicatorTintColor = UIColor.black
        slideImagnes.contentScaleMode = UIViewContentMode.scaleAspectFit
        slideImagnes.currentPageChanged = { page in
            print("current page:", page)
        }
        
    }
    
    func didTap() {
        slideImagnes.presentFullScreenController(from: self)
    }
    
    func didTapFondo() {
        slideImagnes.isHidden = true
    }
    
    
}
