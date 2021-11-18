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
        //switch
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
        if DataTransfer.darkMode == true {
        view.backgroundColor = UIColor.black
            textView.textColor = UIColor.white
            textView.backgroundColor = UIColor.black
        } else {
            view.backgroundColor = UIColor.white
            textView.textColor = UIColor.black
            textView.backgroundColor = UIColor.white
        }
    }

    
    
    
    @IBAction func button(_ sender: Any) {
        performSegue(withIdentifier: "awesomeSegue", sender: nil)
    }
    
    @IBAction func unwind(_ seg: UIStoryboardSegue){
        
    }
    

}
