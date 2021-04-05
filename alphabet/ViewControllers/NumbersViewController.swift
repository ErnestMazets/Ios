//
//  NumbersViewController.swift
//  alphabet
//
//  Created by Ernest Mazets on 16/03/2021.
//

import UIKit
import AVFoundation

class NumbersViewController: UIViewController, AVAudioPlayerDelegate{
    let newVc = ViewController()
    var numberOfPictureInSegueToNumbersVc = 0
    @IBOutlet weak var numbersImageViewOutlet: UIImageView!
    @IBOutlet weak var numbersCatsImageView: UIImageView!
    
    @IBAction func backButton(_ sender: UIButton) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
        
    }
    @IBAction func rightNumberButton(_ sender: UIButton) {
        numberOfPictureInSegueToNumbersVc += 1
        
        if numberOfPictureInSegueToNumbersVc == 100 {
            numberOfPictureInSegueToNumbersVc = 110
        }else if numberOfPictureInSegueToNumbersVc == 111 {
            numberOfPictureInSegueToNumbersVc = 101
        }
        numbersImageViewOutlet.image = UIImage(named: "N\(numberOfPictureInSegueToNumbersVc)")
        numbersCatsImageView.image = UIImage(named: "kot\(numberOfPictureInSegueToNumbersVc)")
        
    }
    @IBAction func leftNumberButton(_ sender: UIButton) {
        numberOfPictureInSegueToNumbersVc -= 1
        
        if numberOfPictureInSegueToNumbersVc == 100 {
            numberOfPictureInSegueToNumbersVc = 110
        }else if numberOfPictureInSegueToNumbersVc == 111 {
            numberOfPictureInSegueToNumbersVc = 101
        }
        numbersImageViewOutlet.image = UIImage(named: "N\(numberOfPictureInSegueToNumbersVc)")
        numbersCatsImageView.image = UIImage(named: "kot\(numberOfPictureInSegueToNumbersVc)")
        
    }
    @IBAction func leftSwipeNumbers(_ sender: UISwipeGestureRecognizer) {
        numberOfPictureInSegueToNumbersVc += 1
        
        if numberOfPictureInSegueToNumbersVc == 100 {
            numberOfPictureInSegueToNumbersVc = 110
        }else if numberOfPictureInSegueToNumbersVc == 111 {
            numberOfPictureInSegueToNumbersVc = 101
        }
        numbersImageViewOutlet.image = UIImage(named: "N\(numberOfPictureInSegueToNumbersVc)")
        numbersCatsImageView.image = UIImage(named: "kot\(numberOfPictureInSegueToNumbersVc)")
    }
    @IBAction func rightSwipeNumbers(_ sender: UISwipeGestureRecognizer) {
        numberOfPictureInSegueToNumbersVc -= 1
        
        if numberOfPictureInSegueToNumbersVc == 100 {
            numberOfPictureInSegueToNumbersVc = 110
        }else if numberOfPictureInSegueToNumbersVc == 111 {
            numberOfPictureInSegueToNumbersVc = 101
        }
        numbersImageViewOutlet.image = UIImage(named: "N\(numberOfPictureInSegueToNumbersVc)")
        numbersCatsImageView.image = UIImage(named: "kot\(numberOfPictureInSegueToNumbersVc)")
    }
    
    @IBAction func touchNumbers(_ sender: UITapGestureRecognizer) {
        newVc.playSound("n\(numberOfPictureInSegueToNumbersVc)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
}









