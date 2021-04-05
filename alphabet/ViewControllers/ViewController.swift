//
//  ViewController.swift
//  alphabet
//
//  Created by Ernest Mazets on 14/03/2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    let data = NSDataAsset(name: "A1")!
    let dataPicture = NSDataAsset(name: "AI11")!
    var firstView = 0
    var numberOfPicture = 0
    var audioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var lettersView: UIView!
    @IBOutlet weak var numbersView: UIView!
    @IBOutlet weak var countButton: UIButton!{
        didSet{
            let borderWidth:CABasicAnimation = CABasicAnimation(keyPath: "borderWidth")
            borderWidth.fromValue = 0
            borderWidth.toValue = 1
            borderWidth.duration = 30
            countButton.layer.borderWidth = 0.9
            countButton.layer.borderColor = UIColor.white.cgColor
            countButton.layer.add(borderWidth, forKey: "Width")
            countButton.layer.borderWidth = 0.0
            self.countButton.backgroundColor = .systemPink
            self.countButton.layer.cornerRadius = 10
            self.countButton.layer.shadowOffset = CGSize(width: 5, height: 5)
            self.countButton.layer.shadowOpacity = 0.7
            self.countButton.layer.shadowRadius = 16
        }
    }
    @IBAction func goCountButton(_ sender: UIButton) {
        let countStoryBoard: UIStoryboard = UIStoryboard(name: "StudyCountViewController", bundle: nil)
        let nextStudyViewController = countStoryBoard.instantiateViewController(withIdentifier: "StudyCountViewController") as! StudyCountViewController
        nextStudyViewController.modalPresentationStyle = .fullScreen
        self.present(nextStudyViewController, animated: true, completion:nil)
        
    }
    @IBAction func lettersButtonsAction(_ sender: UIButton) {
        numberOfPicture = sender.tag
        for item in 1...33 {
            if item == sender.tag {
                playSound("A\(numberOfPicture)")
                segueToNextVC()
                
            }
            
        }
        
    }
    @IBAction func numbersButtonsAction(_ sender: UIButton) {
        numberOfPicture = sender.tag
        for item in 101...110 {
            if item == sender.tag {
                playSound("n\(numberOfPicture)")
                segueToNumbersVC()
            }
        }
    }
    
    
    @IBAction func SegmentedControlAction(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            lettersView.isHidden = false
            numbersView.isHidden = true
        }else if
            sender.selectedSegmentIndex == 1 {
            lettersView.isHidden = true
            numbersView.isHidden = false
        }
        
    }
    
    @IBAction func swipeToNumbers(_ sender: UISwipeGestureRecognizer) {
        
        
        
    }
    
    func segueToNextVC() {
        let storyBoard : UIStoryboard = UIStoryboard(name: "LettersViewController", bundle: nil)
        let nextLetterViewController = storyBoard.instantiateViewController(withIdentifier: "LettersViewController") as! LettersViewController
        nextLetterViewController.modalPresentationStyle = .fullScreen
        nextLetterViewController.numberOfPictureInSegueToLettersVc = numberOfPicture
        self.present(nextLetterViewController, animated: true, completion:nil)
        
        for item in 1...33 {
            if item == numberOfPicture {
                nextLetterViewController.lettersImageViewOutlet.image = UIImage(named: "l\(numberOfPicture)")
                nextLetterViewController.leftImageViewOutlet.image = UIImage(named: "P\(numberOfPicture)1")
                nextLetterViewController.centerImageViewOutlet.image = UIImage(named: "P\(numberOfPicture)2")
                nextLetterViewController.rightImageViewOutlet.image = UIImage(named: "P\(numberOfPicture)3")
                
            }
            
        }
    }
    func segueToNumbersVC() {
        let numbersStoryBoard: UIStoryboard = UIStoryboard(name: "NumbersViewController",bundle: nil)
        let nextNumbersViewController = numbersStoryBoard.instantiateViewController(identifier: "NumbersViewController") as! NumbersViewController
        nextNumbersViewController.modalPresentationStyle = .fullScreen
        nextNumbersViewController.numberOfPictureInSegueToNumbersVc = numberOfPicture
        self.present(nextNumbersViewController, animated: true, completion: nil)
        
        for item in 101...110 {
            if item == numberOfPicture {
                nextNumbersViewController.numbersImageViewOutlet.image = UIImage(named: "N\(numberOfPicture)")
                nextNumbersViewController.numbersCatsImageView.image = UIImage(named: "kot\(numberOfPicture)")
            }
        }
    }
    
    func playSound(_ assetName : String){
        
        guard let audioData = NSDataAsset(name: assetName)?.data else {
            fatalError("Unable to find asset \(assetName)")
        }
        
        do {
            audioPlayer = try AVAudioPlayer(data: audioData)
            audioPlayer.play()
        } catch {
            fatalError(error.localizedDescription)
        }
    }
    func playPictureSound(_ assetPictureName : String){
        
        guard let audioData = NSDataAsset(name: assetPictureName)?.data else {
            fatalError("Unable to find asset \(assetPictureName)")
        }
        
        do {
            audioPlayer = try AVAudioPlayer(data: audioData)
            audioPlayer.play()
        } catch {
            fatalError(error.localizedDescription)
        }
        
    }
}
