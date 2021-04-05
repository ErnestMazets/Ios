//
//  LettersViewController.swift
//  alphabet
//
//  Created by Ernest Mazets on 15/03/2021.
//

import UIKit
import AVFoundation

class LettersViewController: UIViewController {
    let vc = ViewController()
    var numberOfPictureInSegueToLettersVc = 0
    
    @IBOutlet weak var leftImageViewOutlet: UIImageView!
    @IBOutlet weak var rightImageViewOutlet: UIImageView!
    @IBOutlet weak var centerImageViewOutlet: UIImageView!
    
    @IBOutlet weak var lettersImageViewOutlet: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func touchLettersAction(_ sender: UITapGestureRecognizer) {
        
        vc.playSound("A\(numberOfPictureInSegueToLettersVc)")
        
    }
    @IBAction func leftImageTap(_ sender: UITapGestureRecognizer) {
        vc.playPictureSound("AI\(numberOfPictureInSegueToLettersVc)1")
    }
    @IBAction func rightImageTap(_ sender: UITapGestureRecognizer) {
        vc.playPictureSound("AI\(numberOfPictureInSegueToLettersVc)2")
    }
    
    @IBAction func centerImageTap(_ sender: UITapGestureRecognizer) {
        vc.playPictureSound("AI\(numberOfPictureInSegueToLettersVc)3")
    }
    
    
    
    
    @IBAction func leftLetterButton(_ sender: UIButton) {
        numberOfPictureInSegueToLettersVc -= 1
        
        
        if numberOfPictureInSegueToLettersVc == 0 {
            numberOfPictureInSegueToLettersVc = 33
        }else if numberOfPictureInSegueToLettersVc == 34 {
            numberOfPictureInSegueToLettersVc = 1
        }
        lettersImageViewOutlet.image = UIImage(named: "l\(numberOfPictureInSegueToLettersVc)")
        leftImageViewOutlet.image = UIImage(named: "P\(numberOfPictureInSegueToLettersVc)1")
        centerImageViewOutlet.image = UIImage(named: "P\(numberOfPictureInSegueToLettersVc)2")
        rightImageViewOutlet.image = UIImage(named: "P\(numberOfPictureInSegueToLettersVc)3")
        
    }
    @IBAction func rightLetterButton(_ sender: UIButton) {
        numberOfPictureInSegueToLettersVc += 1
        
        
        if numberOfPictureInSegueToLettersVc == 0 {
            numberOfPictureInSegueToLettersVc = 33
        }else if numberOfPictureInSegueToLettersVc == 34 {
            numberOfPictureInSegueToLettersVc = 1
        }
        lettersImageViewOutlet.image = UIImage(named: "l\(numberOfPictureInSegueToLettersVc)")
        leftImageViewOutlet.image = UIImage(named: "P\(numberOfPictureInSegueToLettersVc)1")
        centerImageViewOutlet.image = UIImage(named: "P\(numberOfPictureInSegueToLettersVc)2")
        rightImageViewOutlet.image = UIImage(named: "P\(numberOfPictureInSegueToLettersVc)3")
    }
    
    @IBAction func leftSwipeLetter(_ sender: UISwipeGestureRecognizer) {
        numberOfPictureInSegueToLettersVc += 1
        
        if numberOfPictureInSegueToLettersVc == 0 {
            numberOfPictureInSegueToLettersVc = 33
        }else if numberOfPictureInSegueToLettersVc == 34 {
            numberOfPictureInSegueToLettersVc = 1
        }
        lettersImageViewOutlet.image = UIImage(named: "l\(numberOfPictureInSegueToLettersVc)")
        leftImageViewOutlet.image = UIImage(named: "P\(numberOfPictureInSegueToLettersVc)1")
        centerImageViewOutlet.image = UIImage(named: "P\(numberOfPictureInSegueToLettersVc)2")
        rightImageViewOutlet.image = UIImage(named: "P\(numberOfPictureInSegueToLettersVc)3")
        
    }
    @IBAction func rightSwipeLetter(_ sender: UISwipeGestureRecognizer) {
        numberOfPictureInSegueToLettersVc -= 1
        
        if numberOfPictureInSegueToLettersVc == 0 {
            numberOfPictureInSegueToLettersVc = 33
        }else if numberOfPictureInSegueToLettersVc == 34 {
            numberOfPictureInSegueToLettersVc = 1
        }
        lettersImageViewOutlet.image = UIImage(named: "l\(numberOfPictureInSegueToLettersVc)")
        leftImageViewOutlet.image = UIImage(named: "P\(numberOfPictureInSegueToLettersVc)1")
        centerImageViewOutlet.image = UIImage(named: "P\(numberOfPictureInSegueToLettersVc)2")
        rightImageViewOutlet.image = UIImage(named: "P\(numberOfPictureInSegueToLettersVc)3")
    }
    
    @IBAction func backButton(_ sender: UIButton)  {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
        
    }
    
}


