//
//  LevelsViewController.swift
//  alphabet
//
//  Created by Ernest Mazets on 20/03/2021.
//

import UIKit

class LevelsViewController: UIViewController {
    @IBOutlet weak var numberOfLevelLabel: UILabel!
    @IBOutlet weak var secondNumber: UILabel!
    @IBOutlet weak var thirdNumber: UILabel!
    @IBOutlet weak var foursNumber: UILabel!
    @IBOutlet weak var trueAnswerNumber: UILabel!
    @IBOutlet weak var imageFirstLevel: UIImageView!
    @IBOutlet weak var whiteView: UIView!
    @IBOutlet weak var cropView: UIView!
    @IBOutlet weak var firstNumberExample: UILabel!
    @IBOutlet weak var answerInExample: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func twoPan(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view)
        guard let gestureView = sender.view else {
            return
        }
        gestureView.center = CGPoint(
            x: gestureView.center.x + translation.x,
            y: gestureView.center.y + translation.y)
        sender.setTranslation(.zero, in: view)
        
        if self.trueAnswerNumber.frame.intersects(self.whiteView.frame) == true {
            trueAnswerNumber.frame = CGRect(x: 172, y: 626, width: trueAnswerNumber.frame.width, height: trueAnswerNumber.frame.height)
            trueAnswerNumber.isUserInteractionEnabled = true
            sender.state = .ended
            showAlert()
        }else{
            if sender.state == .ended {
            trueAnswerNumber.frame = CGRect(x: 50, y: 766, width: trueAnswerNumber.frame.width, height: trueAnswerNumber.frame.height)
            }
            
            
        }
    }
    
    @IBAction func fourPan(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view)
        guard let gestureView = sender.view else {
            return
        }
        gestureView.center = CGPoint(
            x: gestureView.center.x + translation.x,
            y: gestureView.center.y + translation.y)
        sender.setTranslation(.zero, in: view)
        
        if self.secondNumber.frame.intersects(self.cropView.frame) == true {
            secondNumber.frame = CGRect(x: 132, y: 766, width: secondNumber.frame.width, height: secondNumber.frame.height)
            sender.state = .ended
            secondNumber.isUserInteractionEnabled = true
            sender.state = .ended
        }else{
            if sender.state == .ended {
            secondNumber.frame = CGRect(x: 132, y: 766, width: secondNumber.frame.width, height: secondNumber.frame.height)
            }
        
    }
    }
    @IBAction func fivePan(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view)
        guard let gestureView = sender.view else {
            return
        }
        gestureView.center = CGPoint(
            x: gestureView.center.x + translation.x,
            y: gestureView.center.y + translation.y)
        sender.setTranslation(.zero, in: view)
        
        if self.thirdNumber.frame.intersects(self.cropView.frame) == true {
            thirdNumber.frame = CGRect(x: 226, y: 766, width: thirdNumber.frame.width, height: thirdNumber.frame.height)
            thirdNumber.isUserInteractionEnabled = true
            sender.state = .ended
        }else{
            if sender.state == .ended {
            thirdNumber.frame = CGRect(x: 226, y: 766, width: thirdNumber.frame.width, height: thirdNumber.frame.height)
            }
        
    }
    }
    @IBAction func onePan(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view)
        guard let gestureView = sender.view else {
            return
        }
        gestureView.center = CGPoint(
            x: gestureView.center.x + translation.x,
            y: gestureView.center.y + translation.y)
        sender.setTranslation(.zero, in: view)
        
        if self.foursNumber.frame.intersects(self.cropView.frame) == true {
            foursNumber.frame = CGRect(x: 301, y: 766, width: foursNumber.frame.width, height: foursNumber.frame.height)
            foursNumber.isUserInteractionEnabled = true
            sender.state = .ended
        }else{
            if sender.state == .ended {
            foursNumber.frame = CGRect(x: 301, y: 766, width: foursNumber.frame.width, height: foursNumber.frame.height)
            }
        }
    }
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    func showAlert(){
        let alert = UIAlertController(title: "Вы выбрали правельный ответ!", message: "", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

