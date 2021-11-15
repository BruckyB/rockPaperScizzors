//
//  ViewController2.swift
//  rockPaperScizzors
//
//  Created by JOHN BRUCKER on 11/8/21.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        
        switch DataTransfer.computerChoice {
        case 0:
            textView.text = "You tied! The computer chose rock, and you chose rock."
        case 1:
            textView.text = "You lose! The computer chose paper, and you chose rock."
            DataTransfer.currentScore = DataTransfer.currentScore - 1
        case 2:
            textView.text = "You win! The computer chose scissors, and you chose rock."
            DataTransfer.currentScore = DataTransfer.currentScore + 1
        default:
            print("hehehehe")
        }
        
    }

    
    
    
    
    
    

}
