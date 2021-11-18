//
//  ViewController3.swift
//  rockPaperScizzors
//
//  Created by JOHN BRUCKER on 11/8/21.
//

import UIKit

class ViewController3: UIViewController {
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //tap gesture recognizer
    @IBAction func tapPaper(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "segueHidden", sender: nil)
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        switch DataTransfer.computerChoice {
        case 0:
            textView.text = "You win! The computer chose rock, and you chose paper."
            DataTransfer.currentScore = DataTransfer.currentScore + 1
        case 1:
            textView.text = "You tied! The computer chose paper, and you chose paper."
        case 2:
            textView.text = "You lose! The computer chose scissors, and you chose paper."
            DataTransfer.currentScore = DataTransfer.currentScore - 1
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
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func unwind(_ seg: UIStoryboardSegue){
    }
}
