//
//  StudyCountViewController.swift
//  alphabet
//
//  Created by Ernest Mazets on 19/03/2021.
//

import UIKit

class StudyCountViewController: UIViewController {
    
    @IBOutlet weak var tryLevel: UILabel!{
        didSet{
            tryLevel.text = "ВЫБЕРИ УРОВЕНЬ"
            tryLevel.font = UIFont.boldSystemFont(ofSize: 30)
            tryLevel.layer.borderWidth = 5
            tryLevel.layer.shadowRadius = 10
            tryLevel.layer.shadowOffset = CGSize(width: 5, height: 5)
            tryLevel.layer.shadowColor = UIColor.black.cgColor
            tryLevel.layer.shadowOpacity = 0.7
            tryLevel.layer.cornerRadius = 16
            tryLevel.textAlignment = .center
            tryLevel.textColor = .darkGray
            tryLevel.layer.borderColor = UIColor.lightGray.cgColor
            tryLevel.frame.contains(CGPoint(x: 50, y: 50))
        }
        
    }
    @IBOutlet var allButtonsLevels: [UIButton]! {
        didSet{
            for buttons in allButtonsLevels {
                for item in 1...24 {
                    if buttons.tag == item {
                        buttons.setTitleColor(UIColor.purple, for: .normal)
                        buttons.layer.borderWidth = 6
                        buttons.layer.borderColor = UIColor.purple.cgColor
                        buttons.titleLabel?.font = .systemFont(ofSize: 40)
                        buttons.setTitle("\(buttons.tag)", for: .normal)
                        buttons.layer.shadowRadius = 10
                        buttons.layer.shadowOffset = CGSize(width: 3, height: 3)
                        buttons.layer.shadowColor = UIColor.purple.cgColor
                        buttons.layer.shadowOpacity = 0.9
                        buttons.layer.cornerRadius = 16
                    }
                    
                }
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonsLevelVc(_ sender: UIButton) {
        for openVC in 1...24 {
            if sender.tag == openVC {
                
                let levelsStoryBoard: UIStoryboard = UIStoryboard(name: "LevelsViewController", bundle: nil)
                let nextLevelsViewController = levelsStoryBoard.instantiateViewController(withIdentifier: "LevelsViewController") as! LevelsViewController
                nextLevelsViewController.modalPresentationStyle = .fullScreen
                self.present(nextLevelsViewController, animated: true, completion:nil)
                
                let openedViewController = openVC
                nextLevelsViewController.numberOfLevelLabel.text = "\(openedViewController)"
                
                if openedViewController == 1{
                    nextLevelsViewController.imageFirstLevel.image = UIImage(named: "Level1")
                    
                    nextLevelsViewController.firstNumberExample.text = "2"
                    nextLevelsViewController.answerInExample.text = "4"
                    
                    nextLevelsViewController.trueAnswerNumber.text = "2"
                    nextLevelsViewController.secondNumber.text = "5"
                    nextLevelsViewController.thirdNumber.text = "4"
                    nextLevelsViewController.foursNumber.text = "1"
                    
                }else if openedViewController == 2{
                    nextLevelsViewController.imageFirstLevel.image = UIImage(named: "Level2")
                    
                    nextLevelsViewController.firstNumberExample.text = "3"
                    nextLevelsViewController.answerInExample.text = "6"
                    
                    nextLevelsViewController.trueAnswerNumber.text = "3"
                    nextLevelsViewController.secondNumber.text = "7"
                    nextLevelsViewController.thirdNumber.text = "2"
                    nextLevelsViewController.foursNumber.text = "4"
                    
                }else if openedViewController == 3{
                    nextLevelsViewController.imageFirstLevel.image = UIImage(named: "Level3")
                    
                    nextLevelsViewController.firstNumberExample.text = "2"
                    nextLevelsViewController.answerInExample.text = "7"
                    
                    nextLevelsViewController.trueAnswerNumber.text = "5"
                    nextLevelsViewController.secondNumber.text = "1"
                    nextLevelsViewController.thirdNumber.text = "4"
                    nextLevelsViewController.foursNumber.text = "6"
                    
                    
                }
            }
        }
    }
    @IBAction func backButton(_ sender: UIButton){
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
}






